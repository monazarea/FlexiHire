import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';

class BaseInfoCard extends StatelessWidget {
  /// المحتوى الذي سيوضع داخل الكارت
  final Widget child;

  /// دالة اختيارية لجعل الكارت قابلاً للضغط
  final VoidCallback? onTap;
  final bool isNew;

  const BaseInfoCard({
    super.key,
    required this.child,
    this.onTap,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isNew ? ColorsManager.primary.withOpacity(0.1) : Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      elevation:isNew?0: 2,
      shadowColor: Colors.black.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: ColorsManager.primary.withOpacity(0.4), width: 1.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: child,
        ),
      ),
    );
  }
}