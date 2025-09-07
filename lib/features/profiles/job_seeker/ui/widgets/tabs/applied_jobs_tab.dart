// lib/features/applied_jobs/ui/applied_jobs_tab.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_job_model.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/widgets/applied_tab_widgets/applied_job_card.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../logic/applied_jobs_tab/applied_jobs_cubit.dart';
import '../../../logic/applied_jobs_tab/applied_jobs_state.dart';

class AppliedJobsTab extends StatefulWidget {
  const AppliedJobsTab({super.key});

  @override
  State<AppliedJobsTab> createState() => _AppliedJobsTabState();
}

class _AppliedJobsTabState extends State<AppliedJobsTab> {
  @override
  void initState() {
    super.initState();
    context.read<AppliedJobsCubit>().fetchAppliedJobs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsCubit, AppliedJobsState>(
      builder: (context, state) {
        switch (state) {
          case AppliedJobsLoading(): // استخدام اسم الـ State الجديد
            return const Center(child: CircularProgressIndicator());

          case AppliedJobsSuccess(appliedJobs:final List<AppliedJobModel> appliedJobsModel): // استخدام اسم الـ State الجديد والـ Field
            if (appliedJobsModel.isEmpty) {
              return const Center(child: Text('No applied jobs found.'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: appliedJobsModel.length,
              itemBuilder: (context, index) {
                final appliedJobModel = appliedJobsModel[index];
                return AppliedJobCard(appliedJobModel: appliedJobModel,onTap: (){
                  // عند الضغط، ننتقل لشاشة التفاصيل ونرسل ID الوظيفة
                  context.pushNamed(
                    Routes.jobDetailsScreen,
                    arguments: appliedJobModel.job.id.toString(),
                  );
                },);
              },
            );

          case AppliedJobsError(apiErrorModel: final apiErrorModel): // استخدام اسم الـ State الجديد والـ Field
            return Center(child: Text('Error: ${apiErrorModel.message ?? 'Unknown error'}'));

          default:
            return const Center(child: Text('Something went wrong.'));
        }
      },
    );
  }
}