import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_application_status_state.freezed.dart';

@freezed
class UpdateApplicationStatusState with _$UpdateApplicationStatusState {
  const factory UpdateApplicationStatusState.initial() = _Initial;
  // تم تغيير أسماء الحالات
  const factory UpdateApplicationStatusState.loading() = UpdateStatusLoading;
  const factory UpdateApplicationStatusState.success(String message) = UpdateStatusSuccess;
  const factory UpdateApplicationStatusState.error(String error) = UpdateStatusError;
}