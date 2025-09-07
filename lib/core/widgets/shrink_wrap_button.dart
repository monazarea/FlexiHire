import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

class ShrinkWrapButton extends StatelessWidget {
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double? buttonHeight;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double? borderRadius;
  final Widget? icon;

  const ShrinkWrapButton({
    super.key,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.buttonHeight,
    this.margin,
    this.backgroundColor,
    this.borderRadius,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        height: buttonHeight ?? 40.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor??ColorsManager.primary.withOpacity(0.8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) icon!,
              if (icon != null) SizedBox(width: 8.w),
              Text(
                buttonText,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}