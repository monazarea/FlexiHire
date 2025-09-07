import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final double borderRadius;
  final BoxFit fit;
  final String? fallbackImagePath;
  // --- 1. تم إضافة بارامتر جديد للأيقونة ---
  final IconData? fallbackIcon;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.borderRadius = 12.0,
    this.fit = BoxFit.cover,
    this.fallbackImagePath,
    // --- 2. إضافته للـ constructor ---
    this.fallbackIcon,
  });

  @override
  Widget build(BuildContext context) {
    Widget fallbackWidget() {
      // بناء الويدجت الاحتياطي
      Widget placeholderContent;
      if (fallbackImagePath != null) {
        // إذا كان هناك مسار صورة احتياطية، نعرضها
        placeholderContent = Opacity(
          opacity: 0.6,
          child: Image.asset(
            fallbackImagePath!,
            fit: BoxFit.contain,
            width: width != null ? width! * 0.8 : null,
          ),
        );
      } else {
        // --- 3. تم التعديل هنا ---
        // نعرض الأيقونة الممررة، أو أيقونة عامة إذا لم يتم تمريرها
        placeholderContent = Icon(
          fallbackIcon ?? Icons.image_not_supported_outlined,
          color: Colors.grey.shade400,
          size: width != null ? width! * 0.5 : 24.0,
        );
      }

      return Container(
        width: width?.w,
        height: height?.h,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(borderRadius.r),
        ),
        alignment: Alignment.center,
        child: placeholderContent,
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius.r),
      child: (imageUrl != null && imageUrl!.isNotEmpty)
          ? CachedNetworkImage(
        imageUrl: imageUrl!,
        width: width?.w,
        height: height?.h,
        fit: fit,
        placeholder: (_, __) => fallbackWidget(),
        errorWidget: (_, __, ___) => fallbackWidget(),
      )
          : fallbackWidget(),
    );
  }
}