import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/features/auth/forget_password/ui/widgets/forget_password_bloc_listener.dart';
import 'package:grad_comp/features/auth/forget_password/ui/widgets/forget_password_form.dart';
import 'package:grad_comp/features/auth/forget_password/ui/widgets/sign_in_with_password_text.dart';
import 'package:grad_comp/features/auth/login/ui/widgets/dont_have_account_text.dart';

import 'package:grad_comp/features/auth/login/ui/widgets/email_and_password.dart';
import 'package:grad_comp/features/auth/login/ui/widgets/login_bloc_listener.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/common_background_screen.dart';
import '../logic/forget_password_cubit.dart';





class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {

  @override
  Widget build(BuildContext context) {
    return CommonBackgroundScreen(
      title: 'Forget password',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mail Address Here',
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: ColorsManager.darkBlue),
          ),
          SizedBox(height: 30.h),
          Text(
            'Please Enter your Email Address To Receive A Verification Code.',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorsManager.gray),
          ),
          SizedBox(height: 30.h),
          Column(
            children: [
              const ForgetPasswordForm(),
              SizedBox(height: 40.h,),
              AppTextButton(buttonText: 'Request OTP',
                  textStyle: TextStyles.font18WhiteW600,
                  onPressed: (){
                    validateThenDoForgetPassword(context);
                    //context.pushNamed(Routes.resetPasswordScreen, arguments: args);
                  }),
              SizedBox(height: 16.h,),
              // const TermsAndConditionsText(),
              //const SizedBox(height: 60,),
              const SignInWithPasswordText(),
              const ForgetPasswordBlocListener(),

            ],
          ),

          // Your email and password fields here
        ],
      ),
    );
  }

  void validateThenDoForgetPassword(BuildContext context) {
    if (context.read<ForgetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ForgetPasswordCubit>().emitForgetPasswordStates();
    }
  }

}
