import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/styles.dart';



class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: TextStyles.font13DarkW400,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13DarkBlueW600,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}