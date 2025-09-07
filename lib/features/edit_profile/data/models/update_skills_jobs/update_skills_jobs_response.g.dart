// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_skills_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSkillsJobsResponse _$UpdateSkillsJobsResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateSkillsJobsResponse(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : JobSeekerProfileData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateSkillsJobsResponseToJson(
        UpdateSkillsJobsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
