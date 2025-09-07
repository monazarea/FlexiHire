import 'package:json_annotation/json_annotation.dart';
import 'applied_job_model.dart';

part 'applied_jobs_response.g.dart';

@JsonSerializable()
class AppliedJobsResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'data')
  final List<AppliedJobModel>? appliedJobs;

  AppliedJobsResponse({this.status, this.message, this.appliedJobs});

  factory AppliedJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppliedJobsResponseFromJson(json);
}