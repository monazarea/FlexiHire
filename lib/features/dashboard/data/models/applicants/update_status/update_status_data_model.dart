import 'package:json_annotation/json_annotation.dart';

part 'update_status_data_model.g.dart';

@JsonSerializable()
class UpdateStatusDataModel {
  final int id;
  @JsonKey(name: 'job_id')
  final String jobId;
  @JsonKey(name: 'user_id')
  final String userId;
  final String proposal;
  final String status;

  UpdateStatusDataModel({
    required this.id,
    required this.jobId,
    required this.userId,
    required this.proposal,
    required this.status,
  });

  factory UpdateStatusDataModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateStatusDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateStatusDataModelToJson(this);
}