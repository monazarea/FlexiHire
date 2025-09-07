import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/features/change_password/ui/widgets/change_password_form.dart';

import '../../../core/theming/styles.dart';
import '../logic/change_password_cubit.dart';
import '../logic/change_password_state.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CustomBackButton(),
        title: Text('Change Password',style:TextStyles.font16BlackBold.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: 22
        )),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<ChangePasswordCubit>(),
        child: BlocListener<ChangePasswordCubit, ChangePasswordState>(
          listener: (context, state) {
            switch(state) {
              case ChangePasswordSuccess(message: final message):
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green,));
                Navigator.of(context).pop(); // العودة للشاشة السابقة بعد النجاح
                break;
              case ChangePasswordError(error: final errorMsg):
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMsg), backgroundColor: Colors.red,));
                break;
              default:
                break;
            }
          },
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: const SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: ChangePasswordForm(),
            ),
          ),
        ),
      ),
    );
  }
}