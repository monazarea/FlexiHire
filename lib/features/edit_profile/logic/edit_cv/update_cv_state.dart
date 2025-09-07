import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_cv_state.freezed.dart';

@freezed
class UpdateCvState with _$UpdateCvState {
  const factory UpdateCvState.initial() = _Initial;
  const factory UpdateCvState.loading() = UpdateCvLoading;
  // حالة النجاح سترجع رابط الـ CV الجديد
  const factory UpdateCvState.success(String message, String newCvUrl) = UpdateCvSuccess;
  const factory UpdateCvState.error(String error) = UpdateCvError;
}