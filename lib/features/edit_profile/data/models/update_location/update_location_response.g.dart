// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateLocationResponse _$UpdateLocationResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateLocationResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$UpdateLocationResponseToJson(
        UpdateLocationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'location': instance.location,
    };
