// lib/features/auth/reset_password/ui/widgets/reset_password_bloc_listener.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/core/theming/colors.dart';
import '../../logic/reset_password_cubit.dart';
import '../../logic/reset_password_state.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
      current is ResetPasswordLoading ||
          current is ResetPasswordSuccess ||
          current is ResetPasswordError,
      listener: (context, state) {
        switch (state) {
          case ResetPasswordLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(child: CircularProgressIndicator()),
            );
            break;
          case ResetPasswordSuccess(message: final message):
            context.pop(); // لإغلاق الـ loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            );
            context.pushReplacementNamed(Routes.loginScreen, );
            break;
          case ResetPasswordError(error: final error):
            context.pop(); // لإغلاق الـ loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
            break;
          default:
            break;
        }
      },
      child: const SizedBox.shrink(), // هذا الويدجت لا يرسم أي شيء على الشاشة
    );
  }
}