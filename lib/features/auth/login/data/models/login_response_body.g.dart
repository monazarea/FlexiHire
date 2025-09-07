// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseBody _$LoginResponseBodyFromJson(Map<String, dynamic> json) =>
    LoginResponseBody(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$LoginResponseBodyToJson(LoginResponseBody instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'token_type': instance.tokenType,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      imageUrl: json['image_url'] as String?,
      backgroundUrl: json['background_url'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      cv: json['cv'] as String?,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      skills: _skillsFromJson(json['skills'] as List?),
      job: _jobFromJson(json['job']),
      appliedJobsCount: (json['applied_jobs_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
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
      'roles': instance.roles,
      'permissions': instance.permissions,
      'skills': instance.skills,
      'job': instance.job,
    };
