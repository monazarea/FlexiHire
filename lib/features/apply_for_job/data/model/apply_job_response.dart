import 'package:json_annotation/json_annotation.dart';

part 'apply_job_response.g.dart';

@JsonSerializable()
class ApplyJobResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'data')
  final ApplicationData? applicationData;

  ApplyJobResponse({this.status, this.message, this.applicationData});

  factory ApplyJobResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplyJobResponseFromJson(json);
}

@JsonSerializable()
class ApplicationData {
  final int? id;
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'job_id')
  final int? jobId;
  final String? proposal;
  final String? status;
  @JsonKey(name: 'created_at')
  final String? createdAt;

  ApplicationData({
    this.id,
    this.userId,
    this.jobId,
    this.proposal,
    this.status,
    this.createdAt,
  });

  factory ApplicationData.fromJson(Map<String, dynamic> json) =>
      _$ApplicationDataFromJson(json);
}