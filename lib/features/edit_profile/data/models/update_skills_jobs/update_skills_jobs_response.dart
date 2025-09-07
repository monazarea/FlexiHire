import 'package:json_annotation/json_annotation.dart';

import '../../../../profiles/job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';

part 'update_skills_jobs_response.g.dart';

@JsonSerializable()
class UpdateSkillsJobsResponse {
  final String? message;
  final JobSeekerProfileData? user;

  UpdateSkillsJobsResponse({this.message, this.user});

  factory UpdateSkillsJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateSkillsJobsResponseFromJson(json);
}