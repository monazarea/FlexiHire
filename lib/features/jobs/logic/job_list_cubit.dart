import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../save_job/logic/save_job_update_service.dart';
import '../data/repos/jobs_repository.dart';
import 'jobs_list_state.dart';

class JobsListCubit extends Cubit<JobsListState> {
  final JobsRepository _jobsRepository;
  // --- بداية الإضافات ---
  final SaveJobUpdateService _saveJobUpdateService;
  StreamSubscription? _saveJobSubscription;
  // --- نهاية الإضافات ---
  int _currentPage = 1;

  JobsListCubit(this._jobsRepository, this._saveJobUpdateService)
      : super(const JobsListState.initial()){
    // ٢. بدء الاستماع للأحداث
    _listenToSaveJobUpdates();
  }
  void _listenToSaveJobUpdates() {
    _saveJobSubscription = _saveJobUpdateService.stream.listen((event) {
      updateJobSavedState(event.jobId, event.isNowSaved);
    });
  }
  void fetchInitialJobs() async {
    if (state is JobsListLoading) return;

    emit(const JobsListState.loading());
    final result = await _jobsRepository.getJobs(page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final jobs = paginationData.jobs ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || jobs.isEmpty;
        _currentPage = 1;
        emit(JobsListState.success(jobs: jobs, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(JobsListState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreJobs() async {
    if (state is! JobsListSuccess) return;

    final currentState = state as JobsListSuccess;

    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));

    _currentPage++;
    final result = await _jobsRepository.getJobs(page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newJobs = paginationData.jobs ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || newJobs.isEmpty;

        emit(currentState.copyWith(
          jobs: List.of(currentState.jobs)..addAll(newJobs),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure(:final apiErrorModel):
        emit(currentState.copyWith(isLoadingMore: false));
        break;
    }
  }

  void updateJobSavedState(int jobId, bool isNowSaved) {
    if (state is JobsListSuccess) {
      final currentState = state as JobsListSuccess;

      final updatedJobs = currentState.jobs.map((job) {
        if (job.id == jobId) {
          return job.copyWith(saved: isNowSaved);
        }
        return job;
      }).toList();

      emit(currentState.copyWith(jobs: updatedJobs));
    }
  }

}