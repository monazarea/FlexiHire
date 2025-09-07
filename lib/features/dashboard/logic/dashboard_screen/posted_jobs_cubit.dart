import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/dashboard/data/repos/posted_jobs_repository.dart';
import 'package:grad_comp/features/dashboard/logic/dashboard_screen/posted_jobs_state.dart';

class PostedJobsCubit extends Cubit<PostedJobsState> {
  final PostedJobsRepository _myJobsRepository;
  int _currentPage = 1;

  PostedJobsCubit(this._myJobsRepository) : super(const PostedJobsState.initial());

  void fetchInitialJobs() async {
    if (state is PostedJobsLoading) return;

    emit(const PostedJobsState.loading());
    final result = await _myJobsRepository.getPostedJobs(page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final jobsList = paginationData.jobs;
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || jobsList.isEmpty;
        _currentPage = 1;
        emit(PostedJobsState.success(jobs: jobsList, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(PostedJobsState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreJobs() async {
    if (state is! PostedJobsSuccess) return;

    final currentState = state as PostedJobsSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));

    _currentPage++;
    final result = await _myJobsRepository.getPostedJobs(page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newJobs = paginationData.jobs;
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
}