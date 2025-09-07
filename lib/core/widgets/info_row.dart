
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoRow extends StatelessWidget {
  final String text;
  final IconData? iconData;
  final String? svgPath;
  final Color? iconColor;
  final TextStyle? textStyle;


  const InfoRow({
    super.key,
    required this.text,
    this.iconData,
    this.svgPath,
    this.iconColor,
    this.textStyle,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (iconData != null)
          Icon(
            iconData,
            size: 16.w,
            color: iconColor ?? Colors.grey.shade600,
          ),
        if (svgPath != null)
          SvgPicture.asset(
            svgPath!,
            width: 20.w,
            height: 20.h,
            colorFilter: iconColor != null
                ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                : null,
          ),
        if (iconData != null || svgPath != null) SizedBox(width: 6.w),
        Flexible(
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  fontSize: 13.sp,
                  color: Colors.grey.shade700,
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}