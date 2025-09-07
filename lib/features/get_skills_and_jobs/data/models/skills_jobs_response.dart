// in models/skills_jobs_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'skill_model.dart';
import 'job_title_model.dart';

part 'skills_jobs_response.freezed.dart';
part 'skills_jobs_response.g.dart';

@freezed
abstract class SkillsJobsResponse with _$SkillsJobsResponse {
  const factory SkillsJobsResponse({
    // نستخدم List<SkillModel> بدلاً من List<dynamic>
    required List<SkillModel> skills,
    required List<JobTitleModel> jobs,
  }) = _SkillsJobsResponse;

  factory SkillsJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillsJobsResponseFromJson(json);
}