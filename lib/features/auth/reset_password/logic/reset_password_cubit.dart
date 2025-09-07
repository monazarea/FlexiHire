import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/auth/forget_password/data/repos/forget_password_repo.dart';
import 'package:grad_comp/features/auth/reset_password/data/models/reset_password_request_body.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ForgetPasswordRepo _forgetPasswordRepo;
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();
  final tokenController = TextEditingController(); // <-- ١. إضافة controller للرمز

  ResetPasswordCubit(this._forgetPasswordRepo) : super(const ResetPasswordState.initial());

  // ٢. الدالة الآن تستقبل الإيميل فقط
  void resetPassword({required String email}) async {
    if (!formKey.currentState!.validate()) return;

    emit(const ResetPasswordState.loading());

    final requestBody = ResetPasswordRequestBody(
      email: email,
      token: tokenController.text, // ٣. أخذ القيمة من الـ controller
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
    );

    final result = await _forgetPasswordRepo.resetPassword(requestBody);

    switch (result) {
      case Success(data: final response):
        emit(ResetPasswordState.success(response.message ?? 'Password reset successfully!'));
        break;
      case Failure(apiErrorModel: final error):
        emit(ResetPasswordState.error(error.message ?? 'An error occurred.'));
        break;
    }
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    passwordConfirmationController.dispose();
    tokenController.dispose(); // ٤. لا تنسي التخلص منه
    return super.close();
  }
}