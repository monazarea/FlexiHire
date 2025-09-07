// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteReviewResponse _$DeleteReviewResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteReviewResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DeleteReviewResponseToJson(
        DeleteReviewResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
