import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

import '../../data/models/manage_job/job_post_response.dart';

part 'manage_job_state.freezed.dart';

@freezed
class ManageJobState with _$ManageJobState {
  const factory ManageJobState.initial() = _Initial;
  const factory ManageJobState.loading() = ManageJobLoading;
  const factory ManageJobState.success(JobPostResponse response) = ManageJobSuccess;
  const factory ManageJobState.error(ApiErrorModel apiErrorModel) = ManageJobError;
}