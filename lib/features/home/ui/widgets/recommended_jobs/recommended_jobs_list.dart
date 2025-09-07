import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/vertical_job_card.dart';
import '../../../logic/recommended_jobs/recommended_jobs_cubit.dart';
import '../../../logic/recommended_jobs/recommended_jobs_state.dart';

class RecommendedJobsList extends StatelessWidget {
  const RecommendedJobsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedJobsCubit, RecommendedJobsState>(
      buildWhen: (previous, current) {
        return current is RecommendedJobsLoading ||
            current is RecommendedJobsSuccess ||
            current is RecommendedJobsError;
      },
      builder: (context, state) {
        // تم التعديل هنا لاستخدام switch
        switch (state) {

          case RecommendedJobsLoading():
            return const Center(child: CircularProgressIndicator());

          case RecommendedJobsSuccess(jobs: final jobsList):
            if (jobsList.isEmpty) {
              return const Center(child: Text('No recommended jobs found.'));
            }
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

          case RecommendedJobsError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'An Error Occurred'));

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}