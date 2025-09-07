import 'package:json_annotation/json_annotation.dart';
import '../jobs/job_model.dart'; // سنستورد الموديل المشترك

part 'recommended_jobs_response.g.dart';

@JsonSerializable()
class RecommendedJobsResponse {
  final String? message;
  final List<JobModel>? data;

  RecommendedJobsResponse({
    this.message,
    this.data,
  });

  factory RecommendedJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$RecommendedJobsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedJobsResponseToJson(this);
}