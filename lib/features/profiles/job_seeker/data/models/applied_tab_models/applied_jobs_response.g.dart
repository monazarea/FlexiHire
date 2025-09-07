// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppliedJobsResponse _$AppliedJobsResponseFromJson(Map<String, dynamic> json) =>
    AppliedJobsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      appliedJobs: (json['data'] as List<dynamic>?)
          ?.map((e) => AppliedJobModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppliedJobsResponseToJson(
        AppliedJobsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.appliedJobs,
    };
