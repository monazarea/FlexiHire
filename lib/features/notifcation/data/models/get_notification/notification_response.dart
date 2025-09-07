// lib/features/notifications/data/models/notification_response.dart

import 'package:json_annotation/json_annotation.dart';
import 'notification_model.dart'; // We import the other model file

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationApiResponse {
  final bool status;
  final List<NotificationModel> notifications;

  @JsonKey(name: 'unread_count')
  final int unreadCount;

  NotificationApiResponse({
    required this.status,
    required this.notifications,
    required this.unreadCount,
  });

  factory NotificationApiResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationApiResponseToJson(this);
}