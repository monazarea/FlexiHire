import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/features/apply_for_job/ui/apply_job_screen.dart';
import 'package:grad_comp/features/save_job/ui/widgets/save_job_button_ui.dart';

import '../../../save_job/ui/widgets/save_job_button_controller.dart';

class JobDetailsBottomBar extends StatelessWidget {
  final bool hasApplied;
  final bool isSaved;
  final int jobId;
  final int jobOwnerId;
  final VoidCallback onApplySuccess;
  final Function(bool isNowSaved)? onSaveStateChanged;


  const JobDetailsBottomBar({
    super.key,
    required this.hasApplied,
    required this.isSaved,
    required this.jobId,
    required this.jobOwnerId,
    required this.onApplySuccess,
    this.onSaveStateChanged,

});

  Future<Widget> _buildContent(BuildContext context) async {
    final role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
    final userId = await SharedPrefHelper.getInt(SharedPrefKeys.userId);

    final isJobSeeker = role.toLowerCase() == 'user';
    final isCompanyOwner = role.toLowerCase() == 'company' && userId == jobOwnerId;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            // الحالة الأولى: Jobseeker → زر Save
            if (isJobSeeker)
              SaveJobButtonController(
                jobId: jobId,
                initialIsSaved: isSaved,
                onStateChanged: onSaveStateChanged, // ٤. تمرير الـ callback
              ),

            if (isJobSeeker)
              SizedBox(width: 30.w),

            // الحالة الأولى: Jobseeker → زر Apply
            if (isJobSeeker)
              Expanded(
                child: AppTextButton(
                  buttonText: hasApplied ? 'Applied' : 'Apply Now',
                  textStyle: TextStyles.font16WhiteW600,
                  onPressed: hasApplied
                      ? null
                      : () {
                    Navigator.of(context)
                        .push(
                      MaterialPageRoute(
                        builder: (context) =>
                            ApplyJobScreen(jobId: jobId),
                      ),
                    )
                        .then((result) {
                      if (result == true) {
                        onApplySuccess();
                      }
                    });
                  },
                  backgroundColor: ColorsManager.primary,
                  borderRadius: 16,
                  buttonHeight: 45.h,
                  horizontalPadding: 0,
                ),
              ),

            // الحالة الثانية: Company صاحبة الوظيفة → زر Delete بنفس المكان
            if (isCompanyOwner)
              Expanded(
                child: AppTextButton(
                  buttonText: "Delete Job",
                  textStyle: TextStyles.font16WhiteW600,
                  onPressed: () {
                    // TODO: Call delete job API and confirm dialog
                  },
                  backgroundColor: Colors.red,
                  borderRadius: 16,
                  buttonHeight: 45.h,
                  horizontalPadding: 0,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _buildContent(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const SizedBox();
        }
        return snapshot.data ?? const SizedBox();
      },
    );
  }
}
