// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppliedJobModel _$AppliedJobModelFromJson(Map<String, dynamic> json) =>
    AppliedJobModel(
      id: (json['id'] as num).toInt(),
      job: JobModel.fromJson(json['job'] as Map<String, dynamic>),
      proposalDate: json['proposal_date'] as String?,
      proposal: json['proposal'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AppliedJobModelToJson(AppliedJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job': instance.job,
      'proposal_date': instance.proposalDate,
      'proposal': instance.proposal,
      'status': instance.status,
    };
