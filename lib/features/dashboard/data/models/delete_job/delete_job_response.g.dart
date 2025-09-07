// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteJobResponse _$DeleteJobResponseFromJson(Map<String, dynamic> json) =>
    DeleteJobResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DeleteJobResponseToJson(DeleteJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
