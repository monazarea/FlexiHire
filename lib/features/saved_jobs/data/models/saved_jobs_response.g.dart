// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedJobsResponse _$SavedJobsResponseFromJson(Map<String, dynamic> json) =>
    SavedJobsResponse(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: PaginationData<SavedJobItemModel>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => SavedJobItemModel.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$SavedJobsResponseToJson(SavedJobsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
    };
