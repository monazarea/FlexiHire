import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/info_row.dart';
import 'package:grad_comp/core/widgets/highlited_text.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

class JobInfoSection extends StatelessWidget {
  final JobModel job;
  final String? highlightTerm;

  const JobInfoSection({
    super.key,
    required this.job,
    this.highlightTerm,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HighlightedText(
          text: job.title ?? "No title",
          highlight: highlightTerm,
          style: TextStyles.font16BlackBold,
        ),
        SizedBox(height: 6.h),
        Row(
          children: [
            if (job.company.firstName?.isNotEmpty == true)
              Text(
                job.company.firstName!,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.grey.shade700,
                ),
              ),
            if (job.company.firstName?.isNotEmpty == true && job.location != null)
              SizedBox(width: 20.w),
            if (job.location != null)
              Flexible(
                child: InfoRow(
                  iconData: Icons.location_on,
                  text: job.location!,
                  iconColor: ColorsManager.primary,
                  textStyle: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
          ],
        ),

        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (job.minSalary != null)
              InfoRow(
                svgPath: 'assets/svgs/coins.svg',
                text: '\$${job.minSalary} - \$${job.maxSalary}',
                iconColor: ColorsManager.primary,
                textStyle: _infoTextStyle,
              ),
            if (job.datePosted != null)
              Text(
                job.datePosted!,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey.shade500,
                ),
              ),
          ],
        ),
      ],
    );
  }

  TextStyle get _infoTextStyle => TextStyle(
    fontSize: 14.sp,
    color: Colors.grey.shade800,
    fontWeight: FontWeight.w600,
  );
}
