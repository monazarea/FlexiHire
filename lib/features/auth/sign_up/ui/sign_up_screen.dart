import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/auth/sign_up/ui/widgets/already_hav_account_text.dart';
import 'package:grad_comp/features/auth/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:grad_comp/features/auth/sign_up/ui/widgets/sign_up_form.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/common_background_screen.dart';
import '../../login/ui/widgets/dont_have_account_text.dart';
import '../logic/sign_up_cubit.dart';





class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  // final formkey = GlobalKey<FormState>();
  // bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return CommonBackgroundScreen(
      title: '',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lets Get Started',
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: ColorsManager.darkBlue),
          ),
          SizedBox(height: 30.h),
          Column(
            children: [
              const SignupForm(),

              SizedBox(height: 40.h,),
              AppTextButton(buttonText: 'Sign up',
                  textStyle: TextStyles.font18WhiteW600,
                  onPressed: (){
                    validateThenDoLogin(context);
                  }),
              SizedBox(height: 16.h,),
              // const TermsAndConditionsText(),
              //const SizedBox(height: 60,),
              const AlreadyHaveAccountText(),
              const SignupBlocListener(),

            ],
          ),

          // Your email and password fields here
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if(context.read<SignUpCubit>().formKey.currentState!.validate()){
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
