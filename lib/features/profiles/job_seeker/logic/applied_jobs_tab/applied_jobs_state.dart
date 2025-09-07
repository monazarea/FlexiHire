import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_job_model.dart';

part 'applied_jobs_state.freezed.dart';

@freezed
class AppliedJobsState with _$AppliedJobsState {
  // تم تغيير أسماء الحالات لتكون مخصصة
  const factory AppliedJobsState.initial() = _AppliedJobsInitial;
  const factory AppliedJobsState.loading() = AppliedJobsLoading;
  const factory AppliedJobsState.success(List<AppliedJobModel> appliedJobs) = AppliedJobsSuccess;
  const factory AppliedJobsState.error(ApiErrorModel apiErrorModel) = AppliedJobsError;
}