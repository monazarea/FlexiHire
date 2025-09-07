import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
      listenWhen: (pervious,current)=>current is LoginLoading || current is LoginSuccess|| current is LoginError,
        listener: (context, state) {
          switch (state) {
            case LoginLoading():
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.primary,
                  ),
                ),
              );
              break;
            case LoginSuccess(:final data ):
              context.pop();
              final role = data.user?.roles.first ?? 'user';
              navigate(context, role);
              break;
            case LoginError(:final apiErrorModel):
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

void navigate(BuildContext context, String role) {
    context.pushReplacementNamed(Routes.homeScreen);

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
