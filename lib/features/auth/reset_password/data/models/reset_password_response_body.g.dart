// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordResponseBody _$ResetPasswordResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordResponseBody(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResetPasswordResponseBodyToJson(
        ResetPasswordResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
