import 'package:json_annotation/json_annotation.dart';

part 'user_skill_model.g.dart';

@JsonSerializable()
class UserSkillModel {
  final int id;
  final String name;

  UserSkillModel({required this.id, required this.name});

  factory UserSkillModel.fromJson(Map<String, dynamic> json) =>
      _$UserSkillModelFromJson(json);
}