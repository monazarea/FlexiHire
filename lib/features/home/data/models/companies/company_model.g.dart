// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) =>
    _CompanyModel(
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
      jobsCount: json['jobs_count'] as String?,
      averageRating: (json['average_rating'] as num?)?.toDouble(),
      reviewCount: (json['review_count'] as num?)?.toInt(),
      following: json['following'] as bool? ?? false,
    );

Map<String, dynamic> _$CompanyModelToJson(_CompanyModel instance) =>
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
      'jobs_count': instance.jobsCount,
      'average_rating': instance.averageRating,
      'review_count': instance.reviewCount,
      'following': instance.following,
    };
