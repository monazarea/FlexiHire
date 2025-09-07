import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:grad_comp/features/auth/forget_password/logic/forget_password_state.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../reset_password/logic/reset_password_screen_args.dart';



class ForgetPasswordBlocListener extends StatelessWidget {
  const ForgetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit,ForgetPasswordState>(
        listenWhen: (pervious,current)=>current is ForgetLoading || current is ForgetSuccess|| current is ForgetError,
        listener: (context, state) {
          switch (state) {
            case ForgetLoading():
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.primary,
                  ),
                ),
              );
              break;
            case ForgetSuccess(:final message ):
              setupSuccessState(context,message);
              break;
            case ForgetError(:final apiErrorModel):
              setupErrorState(context, apiErrorModel);
              break;
            default:
              break;
          }
        },

        child: const SizedBox.shrink()
    );

  }
}


void setupErrorState(BuildContext context, ApiErrorModel error) {

  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error.getAllErrorMesseges(),
        style: TextStyles.font14DarkW500,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font14BlueW600,
          ),
        ),
      ],
    ),
  );
}
void setupSuccessState(BuildContext context, String data) {

   context.pop();
  final email = context.read<ForgetPasswordCubit>().emailController.text;
  final args = ResetPasswordScreenArgs(email: email);
  context.pushNamed(Routes.resetPasswordScreen, arguments: args);

  // showDialog(
  //   context: context,
  //   builder: (context) => AlertDialog(
  //     icon: const Icon(
  //       Icons.check_circle,
  //       color: Colors.green,
  //       size: 32,
  //     ),
  //     content: Text(
  //       data,
  //       style: TextStyles.font14DarkW500,
  //     ),
  //     actions: [
  //       TextButton(
  //         onPressed: () {
  //           context.pop();
  //         },
  //         child: Text(
  //           'Got it',
  //           style: TextStyles.font14BlueW600,
  //         ),
  //       ),
  //     ],
  //   ),
  // );
}
