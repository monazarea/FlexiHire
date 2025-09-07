import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../data/models/change_password_request_body.dart';
import '../data/repos/change_password_repository.dart';
import 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordRepository _repository;

  ChangePasswordCubit(this._repository)
      : super(const ChangePasswordState.initial());

  // Controllers ومفتاح الفورم لإدارة الواجهة
  final formKey = GlobalKey<FormState>();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void changePassword() async {
    // نتأكد أن الفورم يحتوي على بيانات صالحة
    if (!formKey.currentState!.validate()) return;

    // نتأكد من تطابق كلمة المرور الجديدة وتأكيدها
    if (newPasswordController.text != confirmPasswordController.text) {
      emit(const ChangePasswordState.error("New passwords do not match."));
      return;
    }

    emit(const ChangePasswordState.loading());

    final requestBody = ChangePasswordRequestBody(
      oldPassword: oldPasswordController.text,
      password: newPasswordController.text,
      passwordConfirmation: confirmPasswordController.text,
    );

    final result = await _repository.changePassword(requestBody);

    switch (result) {
      case Success(data: final response):
        emit(ChangePasswordState.success(response.message ?? 'Password updated successfully!'));
        break;
      case Failure(: final apiErrorModel):
        emit(ChangePasswordState.error(apiErrorModel.message ?? 'An error occurred.'));
        break;
    }
  }

  // نقوم بالتخلص من الـ Controllers عند إغلاق الكيوبت لمنع تسريب الذاكرة
  @override
  Future<void> close() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}