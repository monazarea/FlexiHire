// lib/features/home/ui/widgets/recent_jobs_vertical_list.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/vertical_job_card.dart';
// -->> ١. استيراد الكيوبت والحالة الصحيحة <<--
import '../../logic/recent_jobs/recent_jobs_cubit.dart';
import '../../logic/recent_jobs/recent_jobs_state.dart';

// -->> ٢. تغيير اسم الكلاس <<--
class RecentJobsVerticalList extends StatelessWidget {
  const RecentJobsVerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    // -->> ٣. تغيير الكيوبت والحالة هنا <<--
    return BlocBuilder<RecentJobsCubit, RecentJobsState>(
      builder: (context, state) {
        switch (state) {
          case RecentJobsLoading():
          // يمكنك استخدام الشيمر الخاص بالوظائف الرأسية هنا إذا أردت
            return const Center(child: CircularProgressIndicator());

          case RecentJobsSuccess(jobs: final jobsList):
            if (jobsList.isEmpty) {
              return const Center(child: Text('No recent jobs found.'));
            }
            // نفس طريقة العرض الرأسية
            return ListView.builder(
              itemCount: jobsList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final job = jobsList[index];
                return VerticalJobCard(
                  job: job,
                );
              },
            );

          case RecentJobsError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'An Error Occurred'));

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}