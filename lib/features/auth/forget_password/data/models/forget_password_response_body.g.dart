// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordResponseBody _$ForgetPasswordResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ForgetPasswordResponseBody(
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ForgetPasswordResponseBodyToJson(
        ForgetPasswordResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
