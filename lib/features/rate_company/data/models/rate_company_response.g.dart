// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_company_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateCompanyResponse _$RateCompanyResponseFromJson(Map<String, dynamic> json) =>
    RateCompanyResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      review: json['review'] == null
          ? null
          : SubmittedReviewData.fromJson(
              json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RateCompanyResponseToJson(
        RateCompanyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'review': instance.review,
    };

SubmittedReviewData _$SubmittedReviewDataFromJson(Map<String, dynamic> json) =>
    SubmittedReviewData(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      companyId: (json['company_id'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      user: json['user'] == null
          ? null
          : ReviewerUserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubmittedReviewDataToJson(
        SubmittedReviewData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'company_id': instance.companyId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
    };

ReviewerUserData _$ReviewerUserDataFromJson(Map<String, dynamic> json) =>
    ReviewerUserData(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ReviewerUserDataToJson(ReviewerUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
    };
