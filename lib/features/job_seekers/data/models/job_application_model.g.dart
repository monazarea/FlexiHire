// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobApplicationModel _$JobApplicationModelFromJson(Map<String, dynamic> json) =>
    JobApplicationModel(
      id: (json['id'] as num).toInt(),
      jobId: json['job_id'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$JobApplicationModelToJson(
        JobApplicationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_id': instance.jobId,
      'status': instance.status,
    };
