import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/save_job/logic/save_job_update_service.dart';
import '../data/repos/saved_jobs_repository.dart';
import 'saved_jobs_state.dart';

class SavedJobsCubit extends Cubit<SavedJobsState> {
  final SavedJobsRepository _repository;
  final SaveJobUpdateService _saveJobUpdateService;
  StreamSubscription? _saveJobSubscription;
  int _currentPage = 1;

  // ١. نتأكد أن الكونستركتور يستقبل الـ Service
  SavedJobsCubit(this._repository, this._saveJobUpdateService)
      : super(const SavedJobsState.initial()) {
    // ٢. نبدأ في الاستماع للأحداث فورًا
    _listenToSaveJobUpdates();
  }

  void _listenToSaveJobUpdates() {
    _saveJobSubscription = _saveJobUpdateService.stream.listen((event) {
      // ٣. عندما يتم إلغاء حفظ وظيفة (isNowSaved = false)
      if (!event.isNowSaved) {
        // ٤. نقوم بإزالتها من القائمة الحالية
        removeJobFromList(event.jobId);
      }
    });
  }

  void fetchInitialJobs() async {
    emit(const SavedJobsState.loading());
    _currentPage = 1;
    final result = await _repository.getSavedJobs(page: _currentPage);
    switch (result) {
      case Success(data: final response):
        final jobs = response.data.data;
        final hasReachedMax = response.data.currentPage == response.data.lastPage || jobs.isEmpty;
        emit(SavedJobsState.success(savedJobs: jobs, hasReachedMax: hasReachedMax));
        break;
      case Failure(: final apiErrorModel):
        emit(SavedJobsState.error(error: apiErrorModel.message ?? 'Failed to load jobs.'));
        break;
    }
  }

  void loadMoreJobs() async {
    if (state is! SavedJobsSuccess) return;
    final currentState = state as SavedJobsSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));
    _currentPage++;
    final result = await _repository.getSavedJobs(page: _currentPage);
    switch (result) {
      case Success(data: final response):
        final newJobs = response.data.data;
        final hasReachedMax = response.data.currentPage == response.data.lastPage || newJobs.isEmpty;
        emit(currentState.copyWith(
          savedJobs: List.of(currentState.savedJobs)..addAll(newJobs),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure():
        emit(currentState.copyWith(isLoadingMore: false));
        _currentPage--;
        break;
    }
  }

  // دالة لإزالة الوظيفة من الحالة الحالية بدون استدعاء API
  void removeJobFromList(int jobId) {
    if (state is SavedJobsSuccess) {
      final currentState = state as SavedJobsSuccess;
      final updatedList = currentState.savedJobs
          .where((savedJobItem) => savedJobItem.job.id != jobId)
          .toList();
      emit(currentState.copyWith(savedJobs: updatedList));
    }
  }

  // ٥. نتأكد من إلغاء الاشتراك لمنع تسريب الذاكرة
  @override
  Future<void> close() {
    _saveJobSubscription?.cancel();
    return super.close();
  }
}