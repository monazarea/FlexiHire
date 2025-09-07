import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAllTapped;
  // 1. إضافة بارامتر جديد لنمط الخط
  final TextStyle? textStyle;
  final double? fontSize;

  const SectionTitle({
    super.key,
    required this.title,
    this.onSeeAllTapped,
    this.textStyle,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          // 3. نستخدم النمط الممرر، أو النمط الافتراضي إذا لم يتم تمريره
          style: textStyle ?? TextStyles.font16BlackBold.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: fontSize??16
          ),
        ),
        if (onSeeAllTapped != null)
          TextButton(
            onPressed: onSeeAllTapped,
            child: const Text(
              'More',
              style: TextStyle(
                fontSize: 13,
                color: ColorsManager.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}