import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/dashboard/data/models/delete_job/delete_job_response.dart';

part 'delete_job_state.freezed.dart';

@freezed
class DeleteJobState with _$DeleteJobState {
  // تم تغيير أسماء الحالات لتكون مخصصة
  const factory DeleteJobState.initial() = _DeleteJobInitial;
  const factory DeleteJobState.loading() = DeleteJobLoading;
  const factory DeleteJobState.success(DeleteJobResponse response) = DeleteJobSuccess;
  const factory DeleteJobState.error(ApiErrorModel apiErrorModel) = DeleteJobError;
}