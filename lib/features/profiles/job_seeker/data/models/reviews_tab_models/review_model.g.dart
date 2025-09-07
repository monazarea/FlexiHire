// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String?,
      companyId: json['company_id'] as String?,
      rating: _parseRating(json['rating'] as String),
      comment: json['comment'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      company: CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'company_id': instance.companyId,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'company': instance.company,
    };
