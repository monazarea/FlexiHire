// lib/features/applied_jobs/ui/applied_jobs_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_job_model.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/applied_jobs_tab/applied_jobs_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/applied_jobs_tab/applied_jobs_state.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/widgets/applied_tab_widgets/applied_job_card.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_back_button.dart';

class AppliedJobsScreen extends StatelessWidget {
  final int? highlightJobId; // لاستقبال ID الوظيفة للتمييز

  const AppliedJobsScreen({super.key, this.highlightJobId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.white,
        title: Text('Applied Jobs',style:TextStyles.font16BlackBold.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: 22
        ),),
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: BlocBuilder<AppliedJobsCubit, AppliedJobsState>(
        builder: (context, state) {
          switch (state) {
            case AppliedJobsLoading():
              return const Center(child: CircularProgressIndicator());

            case AppliedJobsSuccess(appliedJobs: final List<AppliedJobModel> appliedJobsModel):
              if (appliedJobsModel.isEmpty) {
                return const Center(child: Text('You have not applied for any jobs yet.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: appliedJobsModel.length,
                itemBuilder: (context, index) {
                  final appliedJob = appliedJobsModel[index];
                  // نفحص إذا كانت هذه هي الوظيفة المطلوب تمييزها
                  final bool isNew = (appliedJob.job.id == highlightJobId);

                  return AppliedJobCard(
                    appliedJobModel: appliedJob,
                    isNew: isNew, // نمرر علامة الهايلايت للكارد
                    onTap: () {
                      context.pushNamed(
                        Routes.jobDetailsScreen,
                        arguments: appliedJob.job.id.toString(),
                      );
                    },
                  );
                },
              );

            case AppliedJobsError(apiErrorModel: final apiErrorModel):
              return Center(child: Text('Error: ${apiErrorModel.message ?? 'Unknown error'}'));

            default:
              return const Center(child: Text('Something went wrong.'));
          }
        },
      ),
    );
  }
}