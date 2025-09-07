import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

part 'follow_state.freezed.dart';

// Enum لتمثيل حالة طلب الـ API
enum FollowRequestStatus { initial, loading, success, error }

@freezed
abstract class FollowState with _$FollowState {
  const factory FollowState({
    // هل الشركة متابَعة حالياً أم لا
    required bool isFollowing,
    // حالة آخر عملية ضغط على الزر
    @Default(FollowRequestStatus.initial) FollowRequestStatus status,
    // رسالة النجاح أو الخطأ الاختيارية
    String? successMessage,
    ApiErrorModel? error,
  }) = _FollowState;
}