import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_job_model.dart';

class AppliedJobHeader extends StatelessWidget {
  final AppliedJobModel appliedJobModel;

  const AppliedJobHeader({super.key, required this.appliedJobModel});

  static const String fallbackImage = 'assets/images/job_replacement.png';

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomNetworkImage(
          imageUrl: appliedJobModel.job.company.imageUrl,
          width: 45,
          height: 45,
          fallbackImagePath: fallbackImage,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appliedJobModel.job.title??"Job Title",
                style: TextStyles.font16BlackBold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Text(
                appliedJobModel.job.company.firstName ?? 'A Company',
                style: TextStyles.font13GrayW400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}