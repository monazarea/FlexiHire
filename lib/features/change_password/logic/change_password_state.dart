import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  // V-- تم تغيير أسماء الحالات هنا --V
  const factory ChangePasswordState.loading() = ChangePasswordLoading;
  const factory ChangePasswordState.success(String message) = ChangePasswordSuccess;
  const factory ChangePasswordState.error(String error) = ChangePasswordError;
}