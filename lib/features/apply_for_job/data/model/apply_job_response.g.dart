// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyJobResponse _$ApplyJobResponseFromJson(Map<String, dynamic> json) =>
    ApplyJobResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      applicationData: json['data'] == null
          ? null
          : ApplicationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplyJobResponseToJson(ApplyJobResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.applicationData,
    };

ApplicationData _$ApplicationDataFromJson(Map<String, dynamic> json) =>
    ApplicationData(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      jobId: (json['job_id'] as num?)?.toInt(),
      proposal: json['proposal'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ApplicationDataToJson(ApplicationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'job_id': instance.jobId,
      'proposal': instance.proposal,
      'status': instance.status,
      'created_at': instance.createdAt,
    };
