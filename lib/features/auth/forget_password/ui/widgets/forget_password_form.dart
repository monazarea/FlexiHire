import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/app_regex.dart';
import 'package:grad_comp/features/auth/forget_password/logic/forget_password_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPasswordCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(hintText: 'Email',
            validator:(value){
              if(value == null|| value.isEmpty|| !AppRegex.isEmailValid(value)){
                return "Please enter a valid email";
              }
            },
            controller: context.read<ForgetPasswordCubit>().emailController,
          ),
          SizedBox(height: 18.h,),
        ],
      ),
    );
  }

}

