// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_seeker_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeekerProfileResponseModel _$JobSeekerProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    JobSeekerProfileResponseModel(
      user: JobSeekerProfileData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobSeekerProfileResponseModelToJson(
        JobSeekerProfileResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

JobSeekerProfileData _$JobSeekerProfileDataFromJson(
        Map<String, dynamic> json) =>
    JobSeekerProfileData(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      imageUrl: json['image_url'] as String?,
      backgroundUrl: json['background_url'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      cv: json['cv'] as String?,
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      job: json['job'] == null
          ? null
          : JobTitleModel.fromJson(json['job'] as Map<String, dynamic>),
      appliedJobsCount: json['applied_jobs_count'] as String?,
    );

Map<String, dynamic> _$JobSeekerProfileDataToJson(
        JobSeekerProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image_url': instance.imageUrl,
      'background_url': instance.backgroundUrl,
      'applied_jobs_count': instance.appliedJobsCount,
      'description': instance.description,
      'location': instance.location,
      'cv': instance.cv,
      'skills': instance.skills,
      'job': instance.job,
    };
