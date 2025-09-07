// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_basic_info_section.dart';
// import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_salary_section.dart';
// import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_hiring_options_section.dart';
// import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/submit_job_button.dart';
//
// import '../../../../get_skills_and_jobs/ui/widgets/skills_selection_section.dart';
// import '../../../data/models/dashboard_screen/dashboard_job_model.dart';
// import '../../../logic/manage_job/manage_job_cubit.dart';
//
// class JobFormBody extends StatefulWidget {
//   final DashboardJobModel? job;
//   final bool isUpdateMode;
//   final List<String> selectedSkills;
//   final Function(List<String>) onSkillsChanged;
//
//   const JobFormBody({
//     super.key,
//     required this.job,
//     required this.isUpdateMode,
//     required this.selectedSkills,
//     required this.onSkillsChanged,
//   });
//
//   @override
//   State<JobFormBody> createState() => _JobFormBodyState();
// }
//
// class _JobFormBodyState extends State<JobFormBody> {
//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.read<ManageJobCubit>();
//
//     return Form(
//       key: cubit.formKey,
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const JobBasicInfoSection(),
//             const SizedBox(height: 24),
//
//             SkillsSelectionSection(
//               initialSkills: widget.selectedSkills,
//               onSkillsChanged: widget.onSkillsChanged,
//             ),
//             const SizedBox(height: 24),
//
//             const JobSalarySection(),
//             const SizedBox(height: 16),
//
//             const JobHiringOptionsSection(),
//             const SizedBox(height: 32),
//
//             SubmitJobButton(
//               isUpdateMode: widget.isUpdateMode,
//               job: widget.job,
//               selectedSkills: widget.selectedSkills,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_basic_info_section.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_hiring_options_section.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_salary_section.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/submit_job_button.dart';
import 'package:grad_comp/features/get_skills_and_jobs/ui/widgets/skills_selection_section.dart';

class JobFormBody extends StatelessWidget {
  const JobFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ManageJobCubit>().formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const JobBasicInfoSection(),
            const SizedBox(height: 24),
            SkillsSelectionSection(
              initialSkills: context.read<ManageJobCubit>().selectedSkills,
            ),
            const SizedBox(height: 24),
            const JobSalarySection(),
            const SizedBox(height: 16),
            const JobHiringOptionsSection(),
            const SizedBox(height: 32),
            const SubmitJobButton(),
          ],
        ),
      ),
    );
  }
}
