import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:grad_comp/core/networking/api_result.dart' as api_result;
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/networking/dio_factory.dart';


import '../../../../../core/di/dependency_injection.dart';
import '../../../../app_user/logic/user_cubit.dart' show UserCubit;
import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void emitLoginStates()async{
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    switch (response) {
      case api_result.Success(:final data):
        debugPrint("API Response: User name is '${data.user.firstName}' '${data.user.lastName}'");
        debugPrint('API Response:User id is ${data.user.id}');
        await saveUserToken(data.token ?? '');
        await saveUserName(data.user.firstName,data.user.lastName);
        await saveUserId(data.user.id);
        await saveUserRole(data.user.roles);
        await saveUserEmail(data.user.email);
        await saveUserImage(data.user.imageUrl);

       // getIt<UserCubit>().updateUser(data.user);
        emit(LoginState.loginSuccess(data));
      case api_result.Failure(:final apiErrorModel):
        emit(LoginState.loginError(apiErrorModel));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
  Future<void> saveUserName(String firstName,String lastName) async {
    if (firstName.isNotEmpty) {
      await SharedPrefHelper.setData(
          SharedPrefKeys.userName, "$firstName $lastName");
    }
  }

  Future<void> saveUserId(int userId) async {
      await SharedPrefHelper.setData(SharedPrefKeys.userId,userId);
  }
  Future<void> saveUserRole(List<String> userRole) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userRole,userRole.first);
  }

  Future<void> saveUserEmail(String email) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userEmail, email);
  }

  Future<void> saveUserImage(String? imageUrl) async {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      await SharedPrefHelper.setData(SharedPrefKeys.userImage, imageUrl);
    }
  }

}