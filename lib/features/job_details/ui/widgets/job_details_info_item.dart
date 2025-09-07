import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class JobDetailsInfoItem extends StatelessWidget {
  final String? svgPath;
  final String? pngPath;
  final String label;
  final String value;
  final double iconSize;
  final Color iconColor;
  final bool? isNegotiable;

  const JobDetailsInfoItem({
    super.key,
    this.svgPath,
    this.pngPath,
    required this.label,
    required this.value,
    this.iconSize = 30,
    this.iconColor = ColorsManager.primary,
    this.isNegotiable,
  });

  @override
  Widget build(BuildContext context) {
    Widget visualIconContent;

    if (svgPath != null) {
      visualIconContent = SvgPicture.asset(
        svgPath!,
        width: iconSize.w,
        height: iconSize.h,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      );
    } else if (pngPath != null) {
      visualIconContent = Image.asset(
        pngPath!,
        width: iconSize.w,
        height: iconSize.h,
        color: iconColor,
        fit: BoxFit.contain,
      );
    } else {
      visualIconContent = Icon(Icons.help_outline, size: iconSize.r, color: iconColor);
    }

    Widget iconContainer = CircleAvatar(
      radius: iconSize ,
      backgroundColor: ColorsManager.primary.withOpacity(0.1),
      child: visualIconContent,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        iconContainer,
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyles.font14GrayW500),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Text(value, style: TextStyles.font16BlackBold),
                  Spacer(),
                  if (isNegotiable == true)
                    Text(
                      'Negotiable',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}