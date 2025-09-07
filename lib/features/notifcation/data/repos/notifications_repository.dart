import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../models/action_status_response.dart';
import '../models/get_notification/notification_response.dart';

class NotificationsRepository {
  final ApiService _apiService;

  NotificationsRepository(this._apiService);

  Future<ApiResult<NotificationApiResponse>> getNotifications() async {
    try {
      final response = await _apiService.getNotifications();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ActionStatusResponse>> markAsRead(String notificationId) async {
    try {
      final response = await _apiService.markAsRead(notificationId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ActionStatusResponse>> deleteNotification(String notificationId) async {
    try {
      final response = await _apiService.deleteNotification(notificationId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ActionStatusResponse>> markAllAsRead() async {
    try {
      final response = await _apiService.markAllAsRead();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ActionStatusResponse>> deleteAllNotifications() async {
    try {
      final response = await _apiService.deleteAllNotifications();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}