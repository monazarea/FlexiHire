import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/repos/job_applicants_repository.dart';
import 'job_applicants_state.dart';

class JobApplicantsCubit extends Cubit<JobApplicantsState> {
  final JobApplicantsRepository _repository;

  // الكونستركتور لم يعد يستقبل jobId
  JobApplicantsCubit(this._repository) : super(const JobApplicantsState.initial());

  // متغير لحفظ الـ ID بعد تهيئته
  late int jobId;
  int _currentPage = 1;

  // دالة التهيئة التي يتم استدعاؤها من الـ Router
  void fetchInitialApplicants(int id) async {
    jobId = id; // نحفظ الـ ID للاستخدام في تحميل المزيد
    _currentPage = 1;
    emit(const JobApplicantsState.loading());

    final result = await _repository.getJobApplicants(jobId: jobId, page: _currentPage);

    switch (result) {
      case Success(data: final response):
        final applicants = response.data.data;
        final hasReachedMax = response.data.currentPage == response.data.lastPage || applicants.isEmpty;
        emit(JobApplicantsState.success(applicants: applicants, hasReachedMax: hasReachedMax));
        break;
      case Failure(apiErrorModel: final apiErrorModel): // changed variable name
        if (apiErrorModel.code == 422) {
          emit(const JobApplicantsState.contentNotFound());
        } else {
          emit(JobApplicantsState.error(error: apiErrorModel.getAllErrorMesseges() ?? 'Failed to load applicants.'));
        }
        break;
    }
  }

  // دالة تحميل المزيد من الصفحات
  void loadMoreApplicants() async {
    if (state is! JobApplicantsSuccess) return;
    final currentState = state as JobApplicantsSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));
    _currentPage++;

    final result = await _repository.getJobApplicants(jobId: jobId, page: _currentPage);

    switch (result) {
      case Success(data: final response):
        final newApplicants = response.data.data;
        final hasReachedMax = response.data.currentPage == response.data.lastPage || newApplicants.isEmpty;
        emit(currentState.copyWith(
          applicants: List.of(currentState.applicants)..addAll(newApplicants),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure(apiErrorModel: final apiErrorModel): // changed variable name
        if (apiErrorModel.code == 422) {
          emit(const JobApplicantsState.contentNotFound());
        } else {
          emit(currentState.copyWith(isLoadingMore: false));
          _currentPage--;
        }
        break;
    }
  }

  // دالة الترتيب (Ranking)
  void rankApplicants() async {
    emit(const JobApplicantsState.loading());

    final result = await _repository.rankJobApplicants(jobId: jobId);

    switch (result) {
      case Success(data: final response):
        final rankedApplicants = response.data.data;
        emit(JobApplicantsState.success(
          applicants: rankedApplicants,
          hasReachedMax: true, // القائمة المرتبة لا تدعم تحميل المزيد
        ));
        break;
      case Failure(apiErrorModel: final apiErrorModel): // changed variable name
        if (apiErrorModel.code == 422) {
          emit(const JobApplicantsState.contentNotFound());
        } else {
          emit(JobApplicantsState.error(
            error: apiErrorModel.getAllErrorMesseges() ?? 'Ranking failed.',
          ));
        }
        break;
    }
  }
}