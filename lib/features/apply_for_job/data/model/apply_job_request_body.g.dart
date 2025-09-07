// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_job_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyJobRequestBody _$ApplyJobRequestBodyFromJson(Map<String, dynamic> json) =>
    ApplyJobRequestBody(
      jobId: (json['job_id'] as num).toInt(),
      proposal: json['proposal'] as String,
    );

Map<String, dynamic> _$ApplyJobRequestBodyToJson(
        ApplyJobRequestBody instance) =>
    <String, dynamic>{
      'job_id': instance.jobId,
      'proposal': instance.proposal,
    };
