import 'package:json_annotation/json_annotation.dart';

part 'job_application_model.g.dart';

@JsonSerializable()
class JobApplicationModel {
  final int id;
  @JsonKey(name: 'job_id')
  final String? jobId;
  final String? status;

  JobApplicationModel({
    required this.id,
    this.jobId,
    this.status,
  });

  factory JobApplicationModel.fromJson(Map<String, dynamic> json) =>
      _$JobApplicationModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobApplicationModelToJson(this);
}