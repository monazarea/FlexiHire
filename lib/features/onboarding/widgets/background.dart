import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theming/colors.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity, // 👈 ensure it fills the screen
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsManager.primary,
            ColorsManager.secondary,
          ],
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: SvgPicture.asset(
          'assets/svgs/back.svg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
