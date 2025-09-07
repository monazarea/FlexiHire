import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;

  const factory ForgetPasswordState.forgetLoading() = ForgetLoading;
  const factory ForgetPasswordState.forgetSuccess(String message) = ForgetSuccess;
  const factory ForgetPasswordState.forgetError(ApiErrorModel apiErrorModel) = ForgetError;
}
