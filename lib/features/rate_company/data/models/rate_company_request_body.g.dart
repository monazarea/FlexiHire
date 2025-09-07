// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_company_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateCompanyRequestBody _$RateCompanyRequestBodyFromJson(
        Map<String, dynamic> json) =>
    RateCompanyRequestBody(
      companyId: (json['company_id'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$RateCompanyRequestBodyToJson(
        RateCompanyRequestBody instance) =>
    <String, dynamic>{
      'company_id': instance.companyId,
      'rating': instance.rating,
      'comment': instance.comment,
    };
