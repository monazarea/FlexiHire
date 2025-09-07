import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/features/auth/sign_up/logic/sign_up_state.dart';import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/networking/api_result.dart' as api_result;
import '../../../../core/networking/dio_factory.dart';
import '../../../app_user/logic/user_cubit.dart';
import '../../login/logic/cubit/login_state.dart';
import '../data/models/sign_up_request_body.dart';
import '../data/repos/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  String selectedRole = 'user';

  final formKey = GlobalKey<FormState>();

  void emitSignUpStates() async {
    //if (!formKey.currentState!.validate()) return;

    emit(const SignUpState.signupLoading());

    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        role: selectedRole,
      ),
    );
    //when
    switch (response) {
      case api_result.Success(:final data):
        emit(SignUpState.signupSuccess(data));
        //getIt<UserCubit>().updateUser(data.user);
        debugPrint("API Response: User name is '${data.user.firstName}' '${data.user.lastName}'");
        debugPrint('API Response:User id is ${data.user.id}');
        await saveUserToken(data.token ?? '');
        await saveUserName(data.user.firstName,data.user.lastName);
        await saveUserId(data.user.id);
        await saveUserRole(data.user.roles);
        await saveUserEmail(data.user.email);
        await saveUserImage(data.user.imageUrl);

      case api_result.Failure(:final apiErrorModel):
        emit(SignUpState.signupError( apiErrorModel));
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

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    return super.close();
  }
}



