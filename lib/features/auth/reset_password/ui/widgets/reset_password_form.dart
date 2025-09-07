import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import '../../logic/reset_password_cubit.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ResetPasswordCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          // --- ١. إضافة حقل إدخال الرمز ---
          AppTextFormField(
            controller: cubit.tokenController,
            hintText: 'Verification Code',
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.length < 6) {
                return 'Please enter the 6-digit code.';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          // --- حقل كلمة المرور الجديدة ---
          AppTextFormField(
            controller: cubit.passwordController,
            hintText: 'New Password',
            isObscureText: true,
            suffixIcon: const Icon(Icons.visibility_off),
            validator: (value) {
              if (value == null || value.length < 8) {
                return 'Password must be at least 8 characters.';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          // --- حقل تأكيد كلمة المرور ---
          AppTextFormField(
            controller: cubit.passwordConfirmationController,
            hintText: 'Confirm New Password',
            isObscureText: true,
            suffixIcon: const Icon(Icons.visibility_off),
            validator: (value) {
              if (value != cubit.passwordController.text) {
                return 'Passwords do not match.';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}