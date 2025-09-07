import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../logic/sign_up_cubit.dart';
import '../../logic/sign_up_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
      current is SignUpLoading ||
          current is SignUpSuccess ||
          current is SignUpError,
      listener: (context, state) {
        switch (state){
          case SignUpLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          break;
          case SignUpSuccess(:final data) :
            context.pop();
            final role = data.user?.roles.first ?? 'user';
            showSuccessDialog(context, role);
          break;
          case SignUpError(:final apiErrorModel) :
            setupErrorState(context, apiErrorModel);
          break;
        default:
          break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context,String role) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: ColorsManager.primary, disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                  context.pushReplacementNamed(Routes.homeScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
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
}