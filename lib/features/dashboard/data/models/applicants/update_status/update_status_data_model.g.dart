// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStatusDataModel _$UpdateStatusDataModelFromJson(
        Map<String, dynamic> json) =>
    UpdateStatusDataModel(
      id: (json['id'] as num).toInt(),
      jobId: json['job_id'] as String,
      userId: json['user_id'] as String,
      proposal: json['proposal'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$UpdateStatusDataModelToJson(
        UpdateStatusDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_id': instance.jobId,
      'user_id': instance.userId,
      'proposal': instance.proposal,
      'status': instance.status,
    };
