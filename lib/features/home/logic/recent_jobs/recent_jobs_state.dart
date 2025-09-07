import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

part 'recent_jobs_state.freezed.dart';

@freezed
class RecentJobsState with _$RecentJobsState  {
  const factory RecentJobsState .initial() = _Initial;

  const factory RecentJobsState .recentJobsLoading() = RecentJobsLoading;
  const factory RecentJobsState .recentJobsSuccess(List<JobModel> jobs) = RecentJobsSuccess;
  const factory RecentJobsState .recentJobsError(ApiErrorModel apiErrorModel) = RecentJobsError;
}