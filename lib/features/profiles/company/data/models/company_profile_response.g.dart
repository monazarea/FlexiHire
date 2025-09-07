// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyProfileResponse _$CompanyProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _CompanyProfileResponse(
      status: json['status'] as bool?,
      data: json['company'] == null
          ? null
          : CompanyProfileData.fromJson(
              json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyProfileResponseToJson(
        _CompanyProfileResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'company': instance.data,
    };

_CompanyProfileData _$CompanyProfileDataFromJson(Map<String, dynamic> json) =>
    _CompanyProfileData(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      imageUrl: json['image_url'] as String?,
      backgroundUrl: json['background_url'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      type: json['type'] as String?,
      following: json['following'] as bool? ?? false,
      jobs: (json['jobs'] as List<dynamic>?)
              ?.map((e) => CompanyJobModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reviews: json['reviews'] == null
          ? null
          : CompanyReviewsData.fromJson(
              json['reviews'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyProfileDataToJson(_CompanyProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image_url': instance.imageUrl,
      'background_url': instance.backgroundUrl,
      'description': instance.description,
      'location': instance.location,
      'type': instance.type,
      'following': instance.following,
      'jobs': instance.jobs,
      'reviews': instance.reviews,
    };

_CompanyReviewsData _$CompanyReviewsDataFromJson(Map<String, dynamic> json) =>
    _CompanyReviewsData(
      reviews: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => CompanyReviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      averageRating: (json['average_rating'] as num?)?.toDouble(),
      count: (json['count'] as num?)?.toInt(),
      hasReviewed: json['has_reviewed'] as bool?,
      userReview: json['user_review'] == null
          ? null
          : CompanyReviewModel.fromJson(
              json['user_review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyReviewsDataToJson(_CompanyReviewsData instance) =>
    <String, dynamic>{
      'items': instance.reviews,
      'average_rating': instance.averageRating,
      'count': instance.count,
      'has_reviewed': instance.hasReviewed,
      'user_review': instance.userReview,
    };
