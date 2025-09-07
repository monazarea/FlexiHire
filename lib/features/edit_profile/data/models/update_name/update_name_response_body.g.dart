// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_name_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNameResponseBody _$UpdateNameResponseBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateNameResponseBody(
      status: json['status'] as bool,
      message: json['message'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$UpdateNameResponseBodyToJson(
        UpdateNameResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
