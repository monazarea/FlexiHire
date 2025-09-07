import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_job_model.dart';
import '../../../../widgets/base_info_card.dart';
import 'applied_job_header.dart';
import 'application_status_info.dart';

class AppliedJobCard extends StatelessWidget {
  final AppliedJobModel appliedJobModel;
  final VoidCallback? onTap;
  final bool isNew;

  // 1. قمنا بإزالة onTap من الـ constructor لأنه سيتم تعريفه بالداخل
  const AppliedJobCard({
    super.key,
    required this.appliedJobModel,
    this.onTap,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return BaseInfoCard(
      isNew:isNew,
      onTap: onTap,
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppliedJobHeader(appliedJobModel: appliedJobModel),
              SizedBox(height: 12.h,),
              ApplicationStatusInfo(
                status: appliedJobModel.status,
                proposalDate: appliedJobModel.proposalDate,
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.pushNamed(Routes.viewProposalScreen,
                    arguments: appliedJobModel.proposal ?? 'No proposal submitted.',);
                  },
                  icon: Icon(Icons.visibility_outlined, size: 20,color: ColorsManager.primary,),
                  label: const Text('View Proposal'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.primary.withOpacity(isNew?0.2:0.1),
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.grey.shade800,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),

                  ),

                ),
              ),
            ],
          ),
    );
  }
}