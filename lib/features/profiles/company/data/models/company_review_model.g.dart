// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyReviewModel _$CompanyReviewModelFromJson(Map<String, dynamic> json) =>
    CompanyReviewModel(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String?,
      rating: _parseRating(json['rating']),
      comment: json['comment'] as String?,
      createdAt: json['created_at'] as String?,
      user: json['user'] == null
          ? null
          : ReviewerUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyReviewModelToJson(CompanyReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt,
      'user': instance.user,
    };

ReviewerUserModel _$ReviewerUserModelFromJson(Map<String, dynamic> json) =>
    ReviewerUserModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ReviewerUserModelToJson(ReviewerUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
    };
