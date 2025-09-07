// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_skills_jobs_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSkillsJobsRequestBody _$UpdateSkillsJobsRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateSkillsJobsRequestBody(
      skillIds: (json['skill_id'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      jobId: (json['job_id'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateSkillsJobsRequestBodyToJson(
        UpdateSkillsJobsRequestBody instance) =>
    <String, dynamic>{
      'skill_id': instance.skillIds,
      'job_id': instance.jobId,
    };
