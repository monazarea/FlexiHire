import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? iconColor;
  final double? iconSize;
  final Color? backgroundColor;
  final double? circleRadius;

  const CustomBackButton({
    super.key,
    this.onPressed,
    this.iconColor,
    this.iconSize,
    this.backgroundColor,
    this.circleRadius,
  });

  @override
  Widget build(BuildContext context) {
    return  IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: iconColor ?? Colors.black54,
          size: iconSize ?? 20.sp,
        ),
        onPressed: onPressed ?? () => Navigator.of(context).pop(),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      );

  }
}