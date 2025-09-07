// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_proposal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobProposalModel _$JobProposalModelFromJson(Map<String, dynamic> json) =>
    JobProposalModel(
      id: (json['id'] as num).toInt(),
      proposal: json['proposal'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
      user: ApplicantUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobProposalModelToJson(JobProposalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'proposal': instance.proposal,
      'status': instance.status,
      'created_at': instance.createdAt,
      'user': instance.user,
    };
