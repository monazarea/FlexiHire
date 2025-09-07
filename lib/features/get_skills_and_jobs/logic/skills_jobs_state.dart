import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/skills_jobs_response.dart';

part 'skills_jobs_state.freezed.dart';

@freezed
class SkillsJobsState with _$SkillsJobsState {
  const factory SkillsJobsState.initial() = _Initial;
  // تم تغيير أسماء الحالات لتكون أكثر تحديدًا
  const factory SkillsJobsState.loading() = SkillsJobsLoading;
  const factory SkillsJobsState.success(SkillsJobsResponse response) = SkillsJobsSuccess;
  const factory SkillsJobsState.error({required String error}) = SkillsJobsError;
}