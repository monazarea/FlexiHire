import 'package:json_annotation/json_annotation.dart';
import '../../../../../../core/theming/constants.dart';
import '../../../../../get_skills_and_jobs/data/models/job_title_model.dart';
import '../../../../../get_skills_and_jobs/data/models/skill_model.dart';
import 'job_title_model.dart';
import 'skill_model.dart';

part 'job_seeker_profile_response_model.g.dart';

@JsonSerializable()
class JobSeekerProfileResponseModel {
  // هذا الكلاس يبقى كما هو
  final JobSeekerProfileData user;

  JobSeekerProfileResponseModel({required this.user});

  factory JobSeekerProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$JobSeekerProfileResponseModelFromJson(json);
}

@JsonSerializable()
class JobSeekerProfileData {
  final int id;
  @JsonKey(name: 'first_name')
  final String? firstName; // --- 1. جعلناه اختيارياً ---
  @JsonKey(name: 'last_name')
  final String? lastName; // --- 2. جعلناه اختيارياً ---
  final String? email; // --- 3. جعلناه اختيارياً ---
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'background_url')
  final String? backgroundUrl;
  @JsonKey(name: 'applied_jobs_count')
  final String? appliedJobsCount;
  final String? description;
  final String? location;
  final String? cv;

  // --- 4. أضفنا قيمة افتراضية هنا ---
  @JsonKey(defaultValue: [])
  final List<SkillModel>? skills;

  final JobTitleModel? job;

  JobSeekerProfileData({
    required this.id,
    this.firstName, // لم يعد required
    this.lastName,  // لم يعد required
    this.email,     // لم يعد required
    this.imageUrl,
    this.backgroundUrl,
    this.description,
    this.location,
    this.cv,
    this.skills,    // لم يعد required
    this.job,
    this.appliedJobsCount,
  });

  String get displayImageUrl {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return imageUrl!;
    }
    return DefaultImages.prfile_image;
  }

  factory JobSeekerProfileData.fromJson(Map<String, dynamic> json) =>
      _$JobSeekerProfileDataFromJson(json);
}