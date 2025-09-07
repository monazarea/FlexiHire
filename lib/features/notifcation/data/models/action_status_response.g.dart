// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionStatusResponse _$ActionStatusResponseFromJson(
        Map<String, dynamic> json) =>
    ActionStatusResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      unreadCount: (json['unread_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ActionStatusResponseToJson(
        ActionStatusResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'unread_count': instance.unreadCount,
    };
