// in models/skill_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_model.freezed.dart';
part 'skill_model.g.dart';

@freezed
abstract class SkillModel with _$SkillModel {
  const factory SkillModel({
    required int id,
    required String name,
  }) = _SkillModel;

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);
}