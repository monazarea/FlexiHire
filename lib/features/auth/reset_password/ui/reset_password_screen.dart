// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grad_comp/core/helpers/extensions.dart';
// import 'package:grad_comp/core/routing/routes.dart';
// import 'package:grad_comp/core/widgets/app_text_form_field.dart';
// import 'package:grad_comp/core/widgets/shrink_wrap_button.dart';
// import '../logic/reset_password_cubit.dart';
// import '../logic/reset_password_screen_args.dart';
// import '../logic/reset_password_state.dart';
//
// class ResetPasswordScreen extends StatelessWidget {
//   final ResetPasswordScreenArgs args;
//   const ResetPasswordScreen({super.key, required this.args});
//
//   @override
//   Widget build(BuildContext context) {
//     // نحصل على نسخة من الكيوبت هنا لتسهيل الوصول إليها
//     final cubit = context.read<ResetPasswordCubit>();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Create New Password'),
//       ),
//       body: BlocListener<ResetPasswordCubit, ResetPasswordState>(
//         listener: (context, state) {
//           switch (state) {
//             case ResetPasswordSuccess(message: final message):
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(message), backgroundColor: Colors.green),
//               );
//               context.pushReplacementNamed(Routes.loginScreen,);
//               break;
//             case ResetPasswordError(error: final error):
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(error), backgroundColor: Colors.red),
//               );
//               break;
//             default:
//               break;
//           }
//         },
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
//           children: [
//             Text(
//               'Your new password must be different from previously used passwords.',
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             SizedBox(height: 32.h),
//             Form(
//               key: cubit.formKey, // استخدام الـ key من الكيوبت
//               child: Column(
//                 children: [
//                   AppTextFormField(
//                     controller: cubit.passwordController,
//                     hintText: 'New Password',
//                     isObscureText: true,
//                     suffixIcon: const Icon(Icons.visibility_off),
//                     validator: (value) {
//                       if (value == null || value.length < 8) {
//                         return 'Password must be at least 8 characters.';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 16.h),
//                   AppTextFormField(
//                     controller: cubit.passwordConfirmationController,
//                     hintText: 'Confirm New Password',
//                     isObscureText: true,
//                     suffixIcon: const Icon(Icons.visibility_off),
//                     validator: (value) {
//                       if (value != cubit.passwordController.text) {
//                         return 'Passwords do not match.';
//                       }
//                       return null;
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40.h),
//             BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
//               builder: (context, state) {
//                 final isLoading = state is ResetPasswordLoading;
//                 return ShrinkWrapButton(
//                   buttonText: 'Reset Password',
//                   onPressed:  () {
//                     // ٢. التحقق من الفورم قبل استدعاء الكيوبت
//                     if (cubit.formKey.currentState!.validate()) {
//                       cubit.resetPassword(
//                         email: args.email,
//                         token: args.token,
//                       );
//                     }
//                   },
//                   // ٣. تمرير textStyle صحيح
//                   textStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// lib/features/auth/reset_password/ui/reset_password_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import '../../../../core/theming/styles.dart';
import '../logic/reset_password_cubit.dart';
import '../logic/reset_password_screen_args.dart';
import 'widgets/reset_password_bloc_listener.dart';
import 'widgets/reset_password_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  final ResetPasswordScreenArgs args;
  const ResetPasswordScreen({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: CustomBackButton(),
        title: const Text('Create New Password'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: ListView(
            children: [
              Text(
                'Your new password must be different from previously used passwords.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 32.h),
              const ResetPasswordForm(), // <-- ١. استخدام الفورم الجديد
              SizedBox(height: 40.h),
              AppTextButton(
                buttonText: 'Reset Password',
                onPressed: () {
                  validateThenDoResetPassword(context);
                }, textStyle: TextStyles.font18WhiteW600,
              ),
              const ResetPasswordBlocListener(), // <-- ٢. إضافة المستمع هنا
            ],
          ),
        ),

      ),
    );
  }

  void validateThenDoResetPassword(BuildContext context) {
    final cubit = context.read<ResetPasswordCubit>();
    if (cubit.formKey.currentState!.validate()) {
      // -->> التعديل هنا، أصبحت تستدعي الدالة بالإيميل فقط <<--
      cubit.resetPassword(email: args.email);
    }
  }
}