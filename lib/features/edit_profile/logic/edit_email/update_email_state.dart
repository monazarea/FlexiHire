import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_email_state.freezed.dart';

@freezed
class UpdateEmailState with _$UpdateEmailState {
  const factory UpdateEmailState.initial() = _Initial;
  const factory UpdateEmailState.updateEmailLoading() = UpdateEmailLoading;
  const factory UpdateEmailState.updateEmailSuccess(String message) = UpdateEmailSuccess;
  const factory UpdateEmailState.updateEmailError(String error) = UpdateEmailError;
}