import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class CustomChip extends StatelessWidget {
  final String labelText;
  final TextStyle? labelStyle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final BorderSide? side;

  const CustomChip({
    super.key,
    required this.labelText,
    this.labelStyle,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        labelText,
        style: labelStyle ?? TextStyle(
          color: ColorsManager.primary,
          fontWeight: FontWeight.w600,
          fontSize: 13.sp,
        ),
      ),
      backgroundColor: backgroundColor ?? ColorsManager.primary.withOpacity(0.1),
      side: side ?? BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
      ),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
    );
  }
}