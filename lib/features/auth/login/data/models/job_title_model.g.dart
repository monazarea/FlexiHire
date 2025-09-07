// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_title_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTitleModel _$JobTitleModelFromJson(Map<String, dynamic> json) =>
    JobTitleModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$JobTitleModelToJson(JobTitleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
