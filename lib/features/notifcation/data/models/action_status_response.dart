// lib/features/notifcation/data/models/action_status_response.dart

import 'package:json_annotation/json_annotation.dart';

part 'action_status_response.g.dart';

@JsonSerializable()
class ActionStatusResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'unread_count')
  final int? unreadCount;

  ActionStatusResponse({
    this.status,
    this.message,
    this.unreadCount,
  });

  factory ActionStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActionStatusResponseToJson(this);
}