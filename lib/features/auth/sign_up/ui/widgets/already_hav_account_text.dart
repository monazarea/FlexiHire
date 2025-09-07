import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/styles.dart';



class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account?",
            style: TextStyles.font13DarkW400,
          ),
          TextSpan(
            text: ' Sign in',
            style: TextStyles.font13DarkBlueW600,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}