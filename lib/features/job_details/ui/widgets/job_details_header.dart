// lib/features/job_details/ui/widgets/job_details_header.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart'; // JobModel
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_network_image.dart'; // CustomNetworkImage

class JobDetailsHeader extends StatelessWidget {
  final JobModel job;
  final String fallbackImage; // عشان الـ CustomNetworkImage محتاجاها

  const JobDetailsHeader({super.key, required this.job, required this.fallbackImage});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, // خليتها Center عشان الـ Text والصورة يكونوا متسنترين رأسياً
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start, // دي مكنتش بتأثر في Expanded Column
            children: [
              Text(
                job.company.firstName ?? 'A Company',
                style: TextStyles.font14GrayW500, // كانت TextStyles.font14GrayW400
              ),
              SizedBox(height: 8.h),
              Text(
                job.title??'No title',
                style: TextStyles.font22BlackBold,
              ),
            ],
          ),
        ),
        SizedBox(width: 16.w),
        CustomNetworkImage(
          imageUrl: job.company.imageUrl,
          width: 60,
          height: 60,
          fallbackImagePath: fallbackImage,
        ),
      ],
    );
  }
}