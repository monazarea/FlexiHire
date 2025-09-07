// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicantUserModel _$ApplicantUserModelFromJson(Map<String, dynamic> json) =>
    ApplicantUserModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      imageUrl: json['image_url'] as String?,
      cv: json['cv'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ApplicantUserModelToJson(ApplicantUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image_url': instance.imageUrl,
      'cv': instance.cv,
      'location': instance.location,
      'description': instance.description,
    };
