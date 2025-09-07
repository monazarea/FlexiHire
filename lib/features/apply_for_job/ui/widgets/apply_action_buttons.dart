// lib/features/apply_job/ui/widgets/apply_action_buttons.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';

import '../../logic/apply_for_job_cubit.dart';
import '../../logic/apply_for_job_state.dart';

class ApplyActionButtons extends StatelessWidget {
  final VoidCallback onSubmit;

  const ApplyActionButtons({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextButton(
            buttonText: 'Close',
            textStyle: TextStyles.font14GrayW500,
            onPressed: () => Navigator.of(context).pop(),
            backgroundColor: Colors.grey.shade200,
            borderRadius: 16,
            buttonHeight: 40.h,
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: BlocBuilder<ApplyForJobCubit, ApplyForJobState>(
            builder: (context, state) {
              final isSubmitting = state is ApplyForJobSubmitting;
              return SizedBox(
                height: 40.h,
                child: ElevatedButton(
                  onPressed: isSubmitting ? null : onSubmit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: isSubmitting
                      ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                        color: Colors.white, strokeWidth: 2.5),
                  )
                      : Text(
                    'Save',
                    style: TextStyles.font16WhiteW600,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}