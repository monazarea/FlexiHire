import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // ١. إضافة إمبورت البلوك
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/dashboard/logic/dashboard_screen/posted_jobs_cubit.dart';
import 'package:grad_comp/features/home/logic/recent_jobs/recent_jobs_cubit.dart'; // ٢. إضافة إمبورت الكيوبت

import '../../../../../core/routing/routes.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 10.h),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: AppTextButton(
                backgroundColor: ColorsManager.primary.withOpacity(0.8),
                buttonHeight: 45,
                borderRadius: 16,
                buttonText: '+ Create New Job',

                onPressed: () async {
                  print('Create Job button pressed. Navigating...'); // <-- طباعة للتأكد أن الزر يعمل

                  final result = await context.pushNamed(Routes.manageJobScreen);
                  print('Returned from ManageJobScreen with result: $result');


                  if (result == true && context.mounted) {
                    context.read<PostedJobsCubit>().fetchInitialJobs();
                    print('Result is true. Refreshing dashboard cubit...'); // <-- طباعة للتأكد من دخول الشرط
                  }else
                    print('Result is NOT true. Not refreshing.'); // <-- طباعة في حالة عدم تحقق الشرط

                },
                // -- ^ نهاية التعديل ^ --
               buttonWidth: 120.w,
                textStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
            ),
          ],
        ),
      ],
    );
  }
}