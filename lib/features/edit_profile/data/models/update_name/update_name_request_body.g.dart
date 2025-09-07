// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_name_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNameRequestBody _$UpdateNameRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateNameRequestBody(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$UpdateNameRequestBodyToJson(
        UpdateNameRequestBody instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
