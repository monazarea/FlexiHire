// lib/features/notifications/logic/notifications_cubit.dart

import 'dart:async'; // لاستخدام الـ Timer
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../data/models/action_status_response.dart';
import '../data/models/get_notification/notification_model.dart';
import '../data/repos/notifications_repository.dart';
import 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationsRepository _repository;
  Timer? _pollingTimer;

  NotificationsCubit(this._repository) : super(const NotificationsState.initial()) {
    // بمجرد إنشاء الكيوبت، ابدأ في جلب البيانات بشكل دوري
    _startPolling();
  }

  // --- دالة لبدء التحديث الدوري ---
  void _startPolling() {
    // 1. جلب البيانات فورًا في البداية
    getNotifications();

    // 2. ثم ضبط مؤقت (Timer) ليقوم بالجلب كل 30 ثانية
    _pollingTimer = Timer.periodic(const Duration(seconds: 60), (timer) {
      getNotifications();
    });
  }

  void getNotifications() async {
    // لا نُصدر حالة التحميل (Loading) إلا إذا كانت هذه هي المرة الأولى
    if (state is Initial) {
      emit(const NotificationsState.notificationsLoading());
    }

    final result = await _repository.getNotifications();

    switch (result) {
      case Success(data: final response):
        emit(NotificationsState.notificationsSuccess(
          notifications: response.notifications,
          unreadCount: response.unreadCount,
        ));
        break;
      case Failure(apiErrorModel: final error):
      // إذا فشل التحديث، لا نغير الحالة الحالية إذا كانت ناجحة بالفعل
      // هذا يمنع إظهار شاشة الخطأ للمستخدم بسبب فشل في الخلفية
        if (state is! NotificationsSuccess) {
          emit(NotificationsState.notificationsError(
              error: error.message ?? 'An unknown error occurred'));
        }
        break;
    }
  }

  void markNotificationAsRead(String notificationId) async {
    // ١. تحديث فوري للواجهة
    if (state is! NotificationsSuccess) return;

    final currentState = state as NotificationsSuccess;
    final notifications = List<NotificationModel>.from(currentState.notifications);
    final index = notifications.indexWhere((n) => n.id == notificationId);

    if (index == -1 || notifications[index].readAt != null) return; // لا تفعل شيئًا إذا لم يوجد أو كان مقروءًا

    final updatedNotification = NotificationModel(
      id: notifications[index].id, type: notifications[index].type, data: notifications[index].data,
      createdAt: notifications[index].createdAt, readAt: DateTime.now(),
    );
    notifications[index] = updatedNotification;

    emit(currentState.copyWith(
      notifications: notifications,
      unreadCount: currentState.unreadCount > 0 ? currentState.unreadCount - 1 : 0,
    ));

    // ٢. استدعاء الـ API في الخلفية وتصحيح العدد
    final result = await _repository.markAsRead(notificationId);
    if (state is NotificationsSuccess && result is Success<ActionStatusResponse>) {
      if (result.data.unreadCount != null) {
        emit((state as NotificationsSuccess).copyWith(unreadCount: result.data.unreadCount!));
      }
    }
  }

  void deleteNotification(String notificationId) async {
    // ١. تحديث فوري للواجهة
    if (state is! NotificationsSuccess) return;

    final currentState = state as NotificationsSuccess;
    final deletedNotification = currentState.notifications.firstWhere((n) => n.id == notificationId, orElse: () => throw Exception("Notification not found"));
    final wasUnread = deletedNotification.readAt == null;

    final updatedList = currentState.notifications.where((n) => n.id != notificationId).toList();

    emit(currentState.copyWith(
      notifications: updatedList,
      unreadCount: wasUnread && currentState.unreadCount > 0
          ? currentState.unreadCount - 1
          : currentState.unreadCount,
    ));

    // ٢. استدعاء الـ API في الخلفية وتصحيح العدد
    final result = await _repository.deleteNotification(notificationId);
    if (state is NotificationsSuccess && result is Success<ActionStatusResponse>) {
      if (result.data.unreadCount != null) {
        emit((state as NotificationsSuccess).copyWith(unreadCount: result.data.unreadCount!));
      }
    }
  }

  void markAllNotificationsAsRead() async {
    // --- ١. التحديث الفوري للواجهة ---
    if (state is! NotificationsSuccess) return;

    final currentState = state as NotificationsSuccess;
    // لا نفعل شيئًا إذا لم يكن هناك إشعارات غير مقروءة
    if (currentState.unreadCount == 0) return;

    // نقوم بتحديث كل الإشعارات محليًا
    final updatedNotifications = currentState.notifications.map((n) {
      if (n.readAt == null) {
        return NotificationModel(
          id: n.id, type: n.type, data: n.data,
          createdAt: n.createdAt, readAt: DateTime.now(),
        );
      }
      return n;
    }).toList();

    // نصدر الحالة الجديدة فورًا مع تصفير العدد
    emit(currentState.copyWith(
      notifications: updatedNotifications,
      unreadCount: 0,
    ));

    // --- ٢. استدعاء الـ API في الخلفية ---
    final result = await _repository.markAllAsRead();
    if (state is NotificationsSuccess && result is Success<ActionStatusResponse>) {
      // ٣. نصحح العدد بناءً على رد السيرفر (لضمان الدقة)
      if (result.data.unreadCount != null) {
        emit((state as NotificationsSuccess).copyWith(unreadCount: result.data.unreadCount!));
      }
    }
  }

  void deleteAllNotifications() async {
    // --- ١. التحديث الفوري للواجهة ---
    if (state is! NotificationsSuccess) return;

    final currentState = state as NotificationsSuccess;
    // لا نفعل شيئًا إذا كانت القائمة فارغة بالفعل
    if (currentState.notifications.isEmpty) return;

    // نصدر حالة جديدة بقائمة فارغة وعدد غير مقروء صفر
    emit(currentState.copyWith(
      notifications: [],
      unreadCount: 0,
    ));

    // --- ٢. استدعاء الـ API في الخلفية ---
    final result = await _repository.deleteAllNotifications();
    if (state is NotificationsSuccess &&
        result is Success<ActionStatusResponse>) {
      // ٣. نصحح العدد بناءً على رد السيرفر
      if (result.data.unreadCount != null) {
        emit((state as NotificationsSuccess).copyWith(
            unreadCount: result.data.unreadCount!));
      }
    }
  }
  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    return super.close();
  }
}