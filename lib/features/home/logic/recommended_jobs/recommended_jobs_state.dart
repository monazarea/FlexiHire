import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

part 'recommended_jobs_state.freezed.dart';

@freezed
class RecommendedJobsState with _$RecommendedJobsState {
  const factory RecommendedJobsState.initial() = _Initial;
  const factory RecommendedJobsState.loading() = RecommendedJobsLoading;
  const factory RecommendedJobsState.success(List<JobModel> jobs) = RecommendedJobsSuccess;
  const factory RecommendedJobsState.error(ApiErrorModel apiErrorModel) = RecommendedJobsError;
}