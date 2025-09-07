import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/app_regex.dart';
import 'package:grad_comp/features/auth/login/ui/widgets/password_validations.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;


  bool isObscureText = true;
  late TextEditingController  passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();

  }
  void setupPasswordControllerListener() {
    passwordController.addListener((){
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formkey,
      child: Column(
        children: [
          AppTextFormField(hintText: 'Email',
          validator:(value){
            if(value == null|| value.isEmpty|| !AppRegex.isEmailValid(value)){
              return "Please enter a valid email";
            }
          },
          controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(height: 18.h,),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManager.darkBlue,
              ),
            ),
          validator: (value){
            if(value == null|| value.isEmpty){
              return "Please enter a valid password";
            }
          },
          ),
          SizedBox(height: 18.h,),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();

  }
}

