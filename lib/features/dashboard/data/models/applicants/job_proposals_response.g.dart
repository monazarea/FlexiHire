// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_proposals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobProposalsResponse _$JobProposalsResponseFromJson(
        Map<String, dynamic> json) =>
    JobProposalsResponse(
      message: json['message'] as String,
      data: _dataFromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobProposalsResponseToJson(
        JobProposalsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': _dataToJson(instance.data),
    };
