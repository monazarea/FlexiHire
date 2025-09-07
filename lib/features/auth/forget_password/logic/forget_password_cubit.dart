import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/features/auth/forget_password/logic/forget_password_state.dart';
import '../../../../core/networking/api_result.dart' as api_result;
import '../data/models/forget_password_request_body.dart';
import '../data/repos/forget_password_repo.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepo _forgetPasswordRepo;

  ForgetPasswordCubit(this._forgetPasswordRepo)
      : super(const ForgetPasswordState.initial());

  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitForgetPasswordStates() async {
    // if (!formKey.currentState!.validate()) return;

    emit(const ForgetPasswordState.forgetLoading());

    final response = await _forgetPasswordRepo.forgetPassword(
      ForgetPasswordRequestBody(email: emailController.text),
    );

    switch (response) {
      case api_result.Success(:final data):
        emit(ForgetPasswordState.forgetSuccess(data.message));
      case api_result.Failure(:final apiErrorModel):
        emit(ForgetPasswordState.forgetError(apiErrorModel));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    return super.close();
  }
}
