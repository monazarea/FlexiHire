// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_seeker_list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeekerListItemModel _$JobSeekerListItemModelFromJson(
        Map<String, dynamic> json) =>
    JobSeekerListItemModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      imageUrl: json['image_url'] as String?,
      backgroundUrl: json['background_url'] as String?,
      cv: json['cv'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
      blocked: json['blocked'] as bool?,
      appliedJobsCount: json['applied_jobs_count'] as String?,
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) => JobTitleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobApplications: (json['job_applications'] as List<dynamic>?)
          ?.map((e) => JobApplicationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobSeekerListItemModelToJson(
        JobSeekerListItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image_url': instance.imageUrl,
      'background_url': instance.backgroundUrl,
      'cv': instance.cv,
      'location': instance.location,
      'description': instance.description,
      'blocked': instance.blocked,
      'applied_jobs_count': instance.appliedJobsCount,
      'jobs': instance.jobs,
      'job_applications': instance.jobApplications,
    };
