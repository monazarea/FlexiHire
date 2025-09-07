// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStatusResponse _$UpdateStatusResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateStatusResponse(
      status: json['status'] as bool,
      message: json['message'] as String,
      data:
          UpdateStatusDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateStatusResponseToJson(
        UpdateStatusResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
