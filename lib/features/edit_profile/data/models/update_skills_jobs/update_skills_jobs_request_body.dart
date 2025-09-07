import 'package:json_annotation/json_annotation.dart';
part 'update_skills_jobs_request_body.g.dart';

@JsonSerializable()
class UpdateSkillsJobsRequestBody {
  @JsonKey(name: 'skill_id')
  final List<int> skillIds;
  @JsonKey(name: 'job_id')
  final int jobId;

  UpdateSkillsJobsRequestBody({required this.skillIds, required this.jobId});
  Map<String, dynamic> toJson() => _$UpdateSkillsJobsRequestBodyToJson(this);
}