// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveJobResponse _$SaveJobResponseFromJson(Map<String, dynamic> json) =>
    SaveJobResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      isSaved: json['is_saved'] as bool?,
    );

Map<String, dynamic> _$SaveJobResponseToJson(SaveJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'is_saved': instance.isSaved,
    };
