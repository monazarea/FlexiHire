// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequestBody _$ResetPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestBodyToJson(
        ResetPasswordRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'token': instance.token,
    };
