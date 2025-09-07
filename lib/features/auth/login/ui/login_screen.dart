import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/features/auth/login/ui/widgets/dont_have_account_text.dart';

import 'package:grad_comp/features/auth/login/ui/widgets/email_and_password.dart';
import 'package:grad_comp/features/auth/login/ui/widgets/login_bloc_listener.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/common_background_screen.dart';
import '../data/models/login_request_body.dart';
import '../logic/cubit/login_cubit.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final formkey = GlobalKey<FormState>();
  // bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return CommonBackgroundScreen(
      title: 'Sign in',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome To Flexihire',
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: ColorsManager.darkBlue),
          ),
          SizedBox(height: 30.h),
          Column(
            children: [
              const EmailAndPassword(),
              SizedBox(height: 18.h,),

              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.forgetPasswordScreen);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font13DarkBlueW400,
                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              AppTextButton(buttonText: 'Sign in',
                  textStyle: TextStyles.font18WhiteW600,
                  onPressed: (){
                    validateThenDoLogin(context);
                  }),
              SizedBox(height: 16.h,),
              // const TermsAndConditionsText(),
              //const SizedBox(height: 60,),
              const DontHaveAccountText(),
              const LoginBlocListener(),

            ],
          ),

          // Your email and password fields here
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if(context.read<LoginCubit>().formkey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
