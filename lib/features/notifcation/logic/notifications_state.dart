import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/get_notification/notification_model.dart';

part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = Initial;

  // -- تم التعديل هنا --
  const factory NotificationsState.notificationsLoading() = NotificationsLoading;

  // -- وهنا --
  const factory NotificationsState.notificationsSuccess({
    required List<NotificationModel> notifications,
    required int unreadCount,
  }) = NotificationsSuccess;

  // -- وهنا --
  const factory NotificationsState.notificationsError({required String error}) = NotificationsError;
}