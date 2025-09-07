// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobDetailsResponse _$JobDetailsResponseFromJson(Map<String, dynamic> json) =>
    JobDetailsResponse(
      status: json['status'] as bool?,
      job: json['job'] == null
          ? null
          : JobModel.fromJson(json['job'] as Map<String, dynamic>),
      hasApplied: json['has_applied'] as bool?,
      isSaved: json['is_saved'] as bool?,
    );

Map<String, dynamic> _$JobDetailsResponseToJson(JobDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'job': instance.job,
      'has_applied': instance.hasApplied,
      'is_saved': instance.isSaved,
    };
