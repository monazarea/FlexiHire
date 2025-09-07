import 'package:flutter/material.dart';
import 'package:grad_comp/features/onboarding/widgets/background.dart';
import 'package:grad_comp/features/onboarding/widgets/logo_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: LogoAndText(),
            ),
          ),
        ],
      ),
    );
  }
}
