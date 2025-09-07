import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/job_seekers/data/repos/job_seekers_repository.dart';
import 'job_seekers_list_state.dart';

class JobSeekersListCubit extends Cubit<JobSeekersListState> {
  final JobSeekersRepository _jobSeekersRepository;
  int _currentPage = 1;

  JobSeekersListCubit(this._jobSeekersRepository) : super(const JobSeekersListState.initial());

  void fetchInitialJobSeekers() async {
    if (state is JobSeekersListLoading) return;

    emit(const JobSeekersListState.loading());
    final result = await _jobSeekersRepository.getJobSeekers(page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final jobSeekersList = paginationData.jobSeekers ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || jobSeekersList.isEmpty;
        _currentPage = 1;
        emit(JobSeekersListState.success(jobSeekers: jobSeekersList, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(JobSeekersListState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreJobSeekers() async {
    if (state is! JobSeekersListSuccess) return;

    final currentState = state as JobSeekersListSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));

    _currentPage++;
    final result = await _jobSeekersRepository.getJobSeekers(page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newJobSeekers = paginationData.jobSeekers ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || newJobSeekers.isEmpty;
        emit(currentState.copyWith(
          jobSeekers: List.of(currentState.jobSeekers)..addAll(newJobSeekers),
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
