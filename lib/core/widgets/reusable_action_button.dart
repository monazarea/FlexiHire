import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

// 1. إنشاء enum لتحديد أنواع الأزرار الممكنة
enum ActionButtonType {
  follow,
  following,
  contact,
}

class ActionButton extends StatelessWidget {
  final ActionButtonType type;
  final VoidCallback? onTap;

  const ActionButton({
    super.key,
    required this.type,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // 2. استخدام switch لتحديد شكل الزر بناءً على النوع
    switch (type) {
    // ----------------- حالة المتابعة -----------------
      case ActionButtonType.follow:
        return _buildElevatedButton(
          text: 'Follow',
          onTap: onTap,
          backgroundColor: ColorsManager.primary.withOpacity(0.15),
          foregroundColor: ColorsManager.primary,
        );

    // ----------------- حالة "تمت المتابعة" -----------------
      case ActionButtonType.following:
        return _buildElevatedButton(
          text: 'Following',
          onTap: onTap,
          backgroundColor: ColorsManager.primary.withOpacity(0.8),
          foregroundColor: Colors.white,
        );

    // ----------------- حالة "تواصل" -----------------
      case ActionButtonType.contact:
        return _buildElevatedButton(
          text: 'Contact Me',
          onTap: onTap,
          backgroundColor: ColorsManager.primary.withOpacity(0.15),
          foregroundColor: ColorsManager.primary,
        );
    }
  }

  // دالة مساعدة لبناء الزر الممتلئ
  Widget _buildElevatedButton({
    required String text,
    required VoidCallback? onTap,
    required Color backgroundColor,
    required Color foregroundColor,
  }) {
    return SizedBox(
      height: 32.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: foregroundColor),
        ),
      ),
    );
  }

}