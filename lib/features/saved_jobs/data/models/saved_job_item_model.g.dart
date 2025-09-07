// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_job_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedJobItemModel _$SavedJobItemModelFromJson(Map<String, dynamic> json) =>
    SavedJobItemModel(
      id: (json['id'] as num).toInt(),
      savedAt: json['saved_at'] as String,
      job: JobModel.fromJson(json['job'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SavedJobItemModelToJson(SavedJobItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'saved_at': instance.savedAt,
      'job': instance.job.toJson(),
    };
