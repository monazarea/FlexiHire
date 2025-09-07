import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';

part 'update_skills_jobs_state.freezed.dart';

@freezed
class UpdateSkillsJobsState with _$UpdateSkillsJobsState {
  const factory UpdateSkillsJobsState.initial() = _Initial;
  const factory UpdateSkillsJobsState.loading() = UpdateSkillsJobsLoading;
  const factory UpdateSkillsJobsState.success({
    required String message,
    required JobSeekerProfileData updatedUser,
  }) = UpdateSkillsJobsSuccess;
  const factory UpdateSkillsJobsState.error(String error) = UpdateSkillsJobsError;
}