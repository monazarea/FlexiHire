// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEmailResponse _$UpdateEmailResponseFromJson(Map<String, dynamic> json) =>
    UpdateEmailResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UpdateEmailResponseToJson(
        UpdateEmailResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'email': instance.email,
    };
