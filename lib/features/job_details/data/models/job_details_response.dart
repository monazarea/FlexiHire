import 'package:json_annotation/json_annotation.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

part 'job_details_response.g.dart';

@JsonSerializable()
class JobDetailsResponse {
  final bool? status;
  final JobModel? job;
  @JsonKey(name: 'has_applied')
  final bool? hasApplied;
  @JsonKey(name: 'is_saved')
  final bool? isSaved;

  JobDetailsResponse({
    this.status,
    this.job,
    this.hasApplied,
    this.isSaved
  });

  factory JobDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$JobDetailsResponseFromJson(json);
}