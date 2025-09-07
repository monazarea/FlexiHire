// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSkillModel _$UserSkillModelFromJson(Map<String, dynamic> json) =>
    UserSkillModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserSkillModelToJson(UserSkillModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
