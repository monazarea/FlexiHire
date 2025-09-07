import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;
  // 1. إضافة بارامتر جديد للهوامش
  final EdgeInsetsGeometry? margin;

  const SectionContainer({
    super.key,
    required this.child,
    this.margin, // 2. إضافته للـ constructor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // 3. استخدام الهامش الممرر هنا
      margin: margin,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: ColorsManager.primary.withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: child,
    );
  }
}