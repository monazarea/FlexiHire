// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordResponse _$ChangePasswordResponseFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ChangePasswordResponseToJson(
        ChangePasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
