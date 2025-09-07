// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_description_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDescriptionResponseBody _$UpdateDescriptionResponseBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateDescriptionResponseBody(
      status: json['status'] as bool,
      message: json['message'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateDescriptionResponseBodyToJson(
        UpdateDescriptionResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'description': instance.description,
    };
