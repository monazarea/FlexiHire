// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsListResponse _$JobsListResponseFromJson(Map<String, dynamic> json) =>
    JobsListResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : JobPaginationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobsListResponseToJson(JobsListResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
