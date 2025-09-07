import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/home/data/repos/home_repo.dart';
import 'package:grad_comp/features/home/logic/recent_jobs/recent_jobs_state.dart';

class RecentJobsCubit extends Cubit<RecentJobsState> {
  final HomeRepo _homeRepo;

  RecentJobsCubit(this._homeRepo) : super(const RecentJobsState.initial());
  void fetchRecentJobs() async {
    emit(const RecentJobsState.recentJobsLoading());
    final result = await _homeRepo.getRecentJobs();
    switch (result) {
      case Success(data: final jobsList):
        emit(RecentJobsState.recentJobsSuccess(jobsList));
        break;
      case Failure(:final apiErrorModel):
        emit(RecentJobsState.recentJobsError(apiErrorModel));
        break;
    }
  }
}