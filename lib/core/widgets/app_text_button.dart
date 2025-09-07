// lib/core/widgets/app_text_button.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback ?onPressed;
  final Widget? icon; // ١. أضفنا متغيرًا جديدًا للأيقونة

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? ColorsManager.primary,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 10.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 45.h),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white.withOpacity(0.2);
            }
            return null;
          },
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          if (icon != null) SizedBox(width: 8.w), // مسافة بين الأيقونة والنص
          Text(
            buttonText,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}