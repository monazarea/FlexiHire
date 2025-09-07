// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/theming/colors.dart';
// import '../../../../../features/dashboard/data/models/dashboard_screen/dashboard_job_model.dart';
// import '../../../logic/manage_job/manage_job_cubit.dart';
//
// class SubmitJobButton extends StatelessWidget {
//   final bool isUpdateMode;
//   final DashboardJobModel? job;
//   final List<String> selectedSkills;
//
//   const SubmitJobButton({
//     super.key,
//     required this.isUpdateMode,
//     required this.job,
//     required this.selectedSkills,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.read<ManageJobCubit>();
//
//     return FilledButton(
//       onPressed: () {
//         // تحديث المهارات قبل الإرسال
//         cubit.selectedSkills
//           ..clear()
//           ..addAll(selectedSkills);
//
//         cubit.submitJob(
//           formType: isUpdateMode ? JobFormType.update : JobFormType.create,
//           jobId: job?.id,
//         );
//       },
//       style: FilledButton.styleFrom(
//         backgroundColor: ColorsManager.primary.withOpacity(0.8),
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         textStyle: Theme.of(context).textTheme.titleMedium,
//       ),
//       child: Text(isUpdateMode ? 'Save Changes' : 'Post Job'),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';

class SubmitJobButton extends StatelessWidget {
  const SubmitJobButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManageJobCubit>();
    final isUpdateMode = cubit.initialJob != null;

    return FilledButton(
      onPressed: () {
        cubit.submitJob();
      },
      style: FilledButton.styleFrom(
        backgroundColor: ColorsManager.primary.withOpacity(0.8),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: Theme.of(context).textTheme.titleMedium,
      ),
      child: Text(isUpdateMode ? 'Save Changes' : 'Post Job'),
    );
  }
}
