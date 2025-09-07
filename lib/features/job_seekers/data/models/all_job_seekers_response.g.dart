// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_job_seekers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllJobSeekersResponse _$AllJobSeekersResponseFromJson(
        Map<String, dynamic> json) =>
    AllJobSeekersResponse(
      message: json['message'] as String?,
      paginationData: json['data'] == null
          ? null
          : JobSeekersPaginationData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllJobSeekersResponseToJson(
        AllJobSeekersResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.paginationData,
    };

JobSeekersPaginationData _$JobSeekersPaginationDataFromJson(
        Map<String, dynamic> json) =>
    JobSeekersPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      jobSeekers: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => JobSeekerListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$JobSeekersPaginationDataToJson(
        JobSeekersPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.jobSeekers,
      'last_page': instance.lastPage,
      'total': instance.total,
    };
