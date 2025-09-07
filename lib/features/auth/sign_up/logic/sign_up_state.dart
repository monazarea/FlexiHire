import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.signupLoading() = SignUpLoading;
  const factory SignUpState.signupSuccess(T data) = SignUpSuccess<T>;
  const factory SignUpState.signupError(ApiErrorModel apiErrorModel) = SignUpError;
}