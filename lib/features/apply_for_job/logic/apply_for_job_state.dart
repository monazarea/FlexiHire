import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

import '../data/model/apply_job_response.dart';

part 'apply_for_job_state.freezed.dart';

@freezed
class ApplyForJobState with _$ApplyForJobState {
  // تم تغيير أسماء الحالات لتكون مخصصة
  const factory ApplyForJobState.initial() = _ApplyForJobInitial;
  const factory ApplyForJobState.submitting() = ApplyForJobSubmitting;
  const factory ApplyForJobState.success(ApplyJobResponse response) = ApplyForJobSuccess;
  const factory ApplyForJobState.error(ApiErrorModel apiErrorModel) = ApplyForJobError;
}