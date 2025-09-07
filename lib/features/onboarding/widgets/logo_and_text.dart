import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/constants.dart';
import '../../../core/theming/styles.dart';
import 'create_account_button.dart';
import 'google_sign_in_button.dart';

class LogoAndText extends StatelessWidget {
  const LogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // prevents full height
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 282,
          ),
          const SizedBox(height: 20),
          //Align(child: Text("Welcome To FlexiHire", style: TextStyles.font24WhiteBold),alignment: AlignmentDirectional.centerStart,),
          const SizedBox(height: 10),
          // Text("Unlock Your Potential", style: TextStyles.font16WhiteBold),
          //const SizedBox(height: 4),
          // Align(child: Text("Join & Discover", style: TextStyles.font16WhiteBold),
          //   alignment: AlignmentDirectional.centerStart,
          // ),
          const SizedBox(height: 20),

          GoogleSignInButton(),
          const SizedBox(height: Dimentions.between_space),

          CreateAccountButton(),
          const SizedBox(height: Dimentions.between_space),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account? ",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.loginScreen);
                },
                child: Text(
                  "Sign in",
                  style: TextStyles.fontWhiteBold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
