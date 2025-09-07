// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_pagination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobPaginationData _$JobPaginationDataFromJson(Map<String, dynamic> json) =>
    JobPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      jobs: (json['data'] as List<dynamic>?)
          ?.map((e) => JobModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$JobPaginationDataToJson(JobPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.jobs,
      'last_page': instance.lastPage,
      'total': instance.total,
    };
