// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkillsJobsResponse _$SkillsJobsResponseFromJson(Map<String, dynamic> json) =>
    _SkillsJobsResponse(
      skills: (json['skills'] as List<dynamic>)
          .map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => JobTitleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkillsJobsResponseToJson(_SkillsJobsResponse instance) =>
    <String, dynamic>{
      'skills': instance.skills,
      'jobs': instance.jobs,
    };
