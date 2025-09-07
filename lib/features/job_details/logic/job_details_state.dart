import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/job_details/data/models/job_details_response.dart';

part 'job_details_state.freezed.dart';

@freezed
class JobDetailsState with _$JobDetailsState {
  // تم تغيير أسماء الحالات لتكون مخصصة
  const factory JobDetailsState.initial() = _JobDetailsInitial;
  const factory JobDetailsState.loading() = JobDetailsLoading;
  const factory JobDetailsState.success(JobDetailsResponse jobDetailsResponse) = JobDetailsSuccess;
  const factory JobDetailsState.error(ApiErrorModel apiErrorModel) = JobDetailsError;
}