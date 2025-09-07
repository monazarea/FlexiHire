// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyJobsResponse _$MyJobsResponseFromJson(Map<String, dynamic> json) =>
    _MyJobsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationData: json['data'] == null
          ? null
          : MyJobsPaginationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyJobsResponseToJson(_MyJobsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.paginationData,
    };

_MyJobsPaginationData _$MyJobsPaginationDataFromJson(
        Map<String, dynamic> json) =>
    _MyJobsPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      jobs: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => DashboardJobModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MyJobsPaginationDataToJson(
        _MyJobsPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.jobs,
      'last_page': instance.lastPage,
    };
