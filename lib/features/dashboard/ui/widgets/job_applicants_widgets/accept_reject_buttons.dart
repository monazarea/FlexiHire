import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/features/dashboard/data/models/applicants/job_proposal_model.dart';
import 'package:grad_comp/features/dashboard/logic/update_status/update_application_status_cubit.dart';

class AcceptRejectButtons extends StatelessWidget {
  final JobProposalModel proposal;
  const AcceptRejectButtons({super.key, required this.proposal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: AppTextButton(
              buttonHeight: 40.h,
              onPressed: () {
                // استدعاء دالة الرفض من الكيوبت
                context.read<UpdateApplicationStatusCubit>().updateStatus(
                  proposalId: proposal.id,
                  status: 'rejected',
                );
              },
              buttonText: 'Reject',
              backgroundColor: const Color(0xFFFFC2C7),
              textStyle: const TextStyle(color: Color(0xFF721C24), fontSize: 18, fontWeight: FontWeight.w600),
              borderRadius: 16.sp,
            ),
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: AppTextButton(
              buttonHeight: 40.h,
              onPressed: () {
                // استدعاء دالة القبول من الكيوبت
                context.read<UpdateApplicationStatusCubit>().updateStatus(
                  proposalId: proposal.id,
                  status: 'approved',
                );
              },
              buttonText: 'Accept',
              backgroundColor: const Color(0xFFB5DEBF),
              textStyle: const TextStyle(color: Color(0xFF155724), fontSize: 18, fontWeight: FontWeight.w600),
              borderRadius: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}