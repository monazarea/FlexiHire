import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/dashboard/logic/delete_job/delete_job_cubit.dart';
import 'package:grad_comp/features/dashboard/logic/delete_job/delete_job_state.dart';
import '../../../logic/dashboard_screen/posted_jobs_cubit.dart';
import 'dashboard_header.dart';
import 'posted_jobs_list.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BlocListener<DeleteJobCubit, DeleteJobState>(
            listener: (context, state) {
              switch (state) {
                case DeleteJobSuccess(response: final response):
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(response.message ?? 'Job deleted!'),
                      backgroundColor: Colors.green,
                    ),
                  );
                  context.read<PostedJobsCubit>().fetchInitialJobs();
                  break;
                case DeleteJobError(:final apiErrorModel):
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(apiErrorModel.message ?? 'Error deleting job.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                  break;
                default:
                  break;
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: 20.h),
                const DashboardHeader(),
                SizedBox(height: 16.h),
                const Expanded(
                  child: PostedJobsList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}