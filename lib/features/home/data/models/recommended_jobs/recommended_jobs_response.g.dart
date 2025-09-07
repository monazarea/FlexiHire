// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendedJobsResponse _$RecommendedJobsResponseFromJson(
        Map<String, dynamic> json) =>
    RecommendedJobsResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => JobModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecommendedJobsResponseToJson(
        RecommendedJobsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
