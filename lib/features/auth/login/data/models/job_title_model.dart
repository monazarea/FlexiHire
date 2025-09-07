import 'package:json_annotation/json_annotation.dart';

part 'job_title_model.g.dart';

@JsonSerializable()
class JobTitleModel {
  final int id;
  final String? name;

  JobTitleModel({required this.id, this.name});

  factory JobTitleModel.fromJson(Map<String, dynamic> json) =>
      _$JobTitleModelFromJson(json);
}