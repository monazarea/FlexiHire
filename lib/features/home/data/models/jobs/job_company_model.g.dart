// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobCompanyModel _$JobCompanyModelFromJson(Map<String, dynamic> json) =>
    JobCompanyModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      imageUrl: json['image_url'] as String?,
      backgroundUrl: json['background_url'] as String?,
      cv: json['cv'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$JobCompanyModelToJson(JobCompanyModel instance) =>
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
    };
