import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/auth/sign_up/ui/widgets/role_drop_down.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../login/ui/widgets/password_validations.dart';
import '../../logic/sign_up_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  String selectedRole = 'Role';

  late TextEditingController passwordController;
  late TextEditingController passwordConfirmationController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    passwordConfirmationController =
        context.read<SignUpCubit>().passwordConfirmationController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'First name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
            },
            controller: context.read<SignUpCubit>().firstNameController,
          ),
          SizedBox(height: 18.h),
          AppTextFormField(
            hintText: 'Last name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
            },
            controller: context.read<SignUpCubit>().lastNameController,
          ),
          // SizedBox(height: 18.h),
          // AppTextFormField(
          //   hintText: 'Phone number',
          //   validator: (value) {
          //     if (value == null ||
          //         value.isEmpty ||
          //         !AppRegex.isPhoneNumberValid(value)) {
          //       return 'Please enter a valid phone number';
          //     }
          //   },
          //   controller: context.read<SignUpCubit>().phoneController,
          // ),
          SizedBox(height: 18.h),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignUpCubit>().emailController,
          ),
          SizedBox(height: 18.h),
          AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          SizedBox(height: 18.h),
          AppTextFormField(
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            hintText: 'Password Confirmation',
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              if (passwordController.text != value) {
                return 'Password does not match';
              }
            },
          ),
          SizedBox(height: 18.h),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
          SizedBox(height: 18.h),
          RoleDropdown(

            selectedRole: selectedRole,
            onChanged: (value) {
              setState(() {
                selectedRole = value!;
                context.read<SignUpCubit>().selectedRole = value;
              });
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
