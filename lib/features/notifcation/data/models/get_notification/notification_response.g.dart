// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationApiResponse _$NotificationApiResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationApiResponse(
      status: json['status'] as bool,
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      unreadCount: (json['unread_count'] as num).toInt(),
    );

Map<String, dynamic> _$NotificationApiResponseToJson(
        NotificationApiResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'notifications': instance.notifications,
      'unread_count': instance.unreadCount,
    };
