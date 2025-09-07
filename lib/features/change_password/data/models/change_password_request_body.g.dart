// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequestBody _$ChangePasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRequestBody(
      oldPassword: json['old_password'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$ChangePasswordRequestBodyToJson(
        ChangePasswordRequestBody instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
