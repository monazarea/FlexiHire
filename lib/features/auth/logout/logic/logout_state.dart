import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

part 'logout_state.freezed.dart';

@freezed
class LogoutState with _$LogoutState {
  // الحالة الابتدائية قبل أي إجراء
  const factory LogoutState.initial() = _LogoutInitial;

  // حالة إرسال طلب تسجيل الخروج
  const factory LogoutState.loading() = LogoutLoading;

  // حالة نجاح تسجيل الخروج
  const factory LogoutState.success() = LogoutSuccess;

  // حالة فشل تسجيل الخروج
  const factory LogoutState.error(ApiErrorModel apiErrorModel) = LogoutError;
}