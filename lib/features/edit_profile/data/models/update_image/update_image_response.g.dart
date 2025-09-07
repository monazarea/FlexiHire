// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateImageResponse _$UpdateImageResponseFromJson(Map<String, dynamic> json) =>
    UpdateImageResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$UpdateImageResponseToJson(
        UpdateImageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'image_url': instance.imageUrl,
    };
