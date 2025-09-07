import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';

import '../../logic/change_password_cubit.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  // متغيرات لإدارة حالة إظهار/إخفاء كلمة المرور
  bool _isOldPasswordObscure = true;
  bool _isNewPasswordObscure = true;
  bool _isConfirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChangePasswordCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          SizedBox(height: 140.h,),
          // حقل كلمة المرور القديمة
          AppTextFormField(
            controller: cubit.oldPasswordController,
            hintText: 'Old Password',
            isObscureText: _isOldPasswordObscure,
            suffixIcon: _buildVisibilityToggle(
              isObscure: _isOldPasswordObscure,
              onTap: () => setState(() => _isOldPasswordObscure = !_isOldPasswordObscure),
            ),
            validator: (value) => value == null || value.isEmpty ? 'Please enter your old password' : null,
          ),
          SizedBox(height: 18.h),

          // حقل كلمة المرور الجديدة
          AppTextFormField(
            controller: cubit.newPasswordController,
            hintText: 'New Password',
            isObscureText: _isNewPasswordObscure,
            suffixIcon: _buildVisibilityToggle(
              isObscure: _isNewPasswordObscure,
              onTap: () => setState(() => _isNewPasswordObscure = !_isNewPasswordObscure),
            ),
            validator: (value) => value == null || value.isEmpty || value.length < 8 ? 'Password must be at least 8 characters' : null,
          ),
          SizedBox(height: 18.h),

          // حقل تأكيد كلمة المرور الجديدة
          AppTextFormField(
            controller: cubit.confirmPasswordController,
            hintText: 'Confirm New Password',
            isObscureText: _isConfirmPasswordObscure,
            suffixIcon: _buildVisibilityToggle(
              isObscure: _isConfirmPasswordObscure,
              onTap: () => setState(() => _isConfirmPasswordObscure = !_isConfirmPasswordObscure),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your new password';
              }
              if (value != cubit.newPasswordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
          SizedBox(height: 40.h),

          // زر التحديث
          AppTextButton(
            buttonText: 'Update Password',
            onPressed: () {
              cubit.changePassword();
            },
            textStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildVisibilityToggle({required bool isObscure, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isObscure ? Icons.visibility_off : Icons.visibility,
        color: ColorsManager.primary,
      ),
    );
  }
}