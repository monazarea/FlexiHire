import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/widgets/horizontal_jobs_list.dart';

import 'package:grad_comp/features/home/logic/recent_jobs/recent_jobs_cubit.dart';
import 'package:grad_comp/features/home/logic/recent_jobs/recent_jobs_state.dart';

import 'jobs_shimmer_loading.dart';

class RecentJobsBlocBuilder extends StatelessWidget {
  const RecentJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentJobsCubit, RecentJobsState>(
      buildWhen: (previous, current) {
        return current is RecentJobsLoading ||
            current is RecentJobsSuccess ||
            current is RecentJobsError;
      },
      builder: (context, state) {
        switch (state) {
          case RecentJobsLoading():
            return const RecentJobsShimmerLoading();

          case RecentJobsSuccess(jobs: final jobsList):
            if (jobsList.isEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text("No recent jobs found."),
                ),
              );
            }
            return HorizontalJobsList(jobsList: jobsList);

          case RecentJobsError(:final apiErrorModel):
            return Center(
                child: Text(apiErrorModel.message ?? 'An error occurred'));

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}