import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/dashboard/data/models/dashboard_screen/dashboard_job_model.dart';

part 'posted_jobs_state.freezed.dart';

@freezed
class PostedJobsState with _$PostedJobsState {
  const factory PostedJobsState.initial() = _PostedJobsInitial;
  const factory PostedJobsState.loading() = PostedJobsLoading;
  const factory PostedJobsState.success({
    required List<DashboardJobModel> jobs,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = PostedJobsSuccess;
  const factory PostedJobsState.error(ApiErrorModel apiErrorModel) = PostedJobsError;
}