// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobPostResponse _$JobPostResponseFromJson(Map<String, dynamic> json) =>
    _JobPostResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      job: json['job'] == null
          ? null
          : DashboardJobModel.fromJson(json['job'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobPostResponseToJson(_JobPostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'job': instance.job,
    };
