import 'package:json_annotation/json_annotation.dart';
import '../../../get_skills_and_jobs/data/models/job_title_model.dart';
import '../../../profiles/job_seeker/data/models/profile_tab_models/job_title_model.dart';
import 'job_application_model.dart';

part 'job_seeker_list_item_model.g.dart';

@JsonSerializable()
class JobSeekerListItemModel {
  final int id;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? email;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'background_url')
  final String? backgroundUrl;
  final String? cv;
  final String? location;
  final String? description;
  final bool? blocked;
  @JsonKey(name: 'applied_jobs_count')
  final String? appliedJobsCount;
  final List<JobTitleModel>? jobs;
  @JsonKey(name: 'job_applications')
  final List<JobApplicationModel>? jobApplications;

  JobSeekerListItemModel({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.imageUrl,
    this.backgroundUrl,
    this.cv,
    this.location,
    this.description,
    this.blocked,
    this.appliedJobsCount,
    this.jobs,
    this.jobApplications,
  });

  factory JobSeekerListItemModel.fromJson(Map<String, dynamic> json) =>
      _$JobSeekerListItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobSeekerListItemModelToJson(this);
}
