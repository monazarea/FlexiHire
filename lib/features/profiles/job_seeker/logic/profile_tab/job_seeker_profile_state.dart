// lib/features/profiles/job_seeker/logic/company_profile_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';

part 'job_seeker_profile_state.freezed.dart';

@freezed
class JobSeekerProfileState with _$JobSeekerProfileState {
  const factory JobSeekerProfileState.initial() = _Initial;

  const factory JobSeekerProfileState.getProfileLoading() = GetProfileLoading;
  const factory JobSeekerProfileState.getProfileSuccess(JobSeekerProfileData userData) = GetProfileSuccess;
  const factory JobSeekerProfileState.getProfileError(ApiErrorModel apiErrorModel) = GetProfileError;
}