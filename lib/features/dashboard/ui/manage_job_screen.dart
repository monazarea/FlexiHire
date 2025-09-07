// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:grad_comp/core/di/dependency_injection.dart';
// // import 'package:grad_comp/core/theming/colors.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_basic_info_section.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_form_body.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_hiring_options_section.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_salary_section.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/loading_overlay.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/manage_job_consumer.dart';
// // import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/submit_job_button.dart';
// // import '../../../core/widgets/custom_back_button.dart';
// // import '../../get_skills_and_jobs/ui/widgets/skills_selection_section.dart';
// // import '../data/models/dashboard_screen/dashboard_job_model.dart';
// // import '../logic/manage_job/manage_job_cubit.dart';
// // import '../logic/manage_job/manage_job_state.dart';
// //
// // class ManageJobScreen extends StatefulWidget {
// //   final DashboardJobModel? job;
// //   const ManageJobScreen({super.key, this.job});
// //
// //   @override
// //   State<ManageJobScreen> createState() => _ManageJobScreenState();
// // }
// //
// // class _ManageJobScreenState extends State<ManageJobScreen> {
// //   // متغيرات لحفظ حالة الواجهة
// //   late bool salaryNegotiable;
// //   late bool hiringMultiple;
// //   late String selectedPaymentPeriod;
// //   List<String> _finalSelectedSkills = [];
// //
// //   bool get isUpdateMode => widget.job != null;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     // نقوم بتهيئة كل شيء من الكيوبت عند بناء الويدجت لأول مرة
// //     final cubit = context.read<ManageJobCubit>();
// //     if (isUpdateMode) {
// //       cubit.initializeForUpdate(widget.job!);
// //     }
// //     salaryNegotiable = cubit.salaryNegotiable;
// //     hiringMultiple = cubit.hiringMultiple;
// //     selectedPaymentPeriod = cubit.selectedPaymentPeriod;
// //     _finalSelectedSkills = List.from(cubit.selectedSkills);
// //
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     // لم نعد بحاجة لـ BlocProvider هنا لأننا سنستخدم getIt
// //     return Scaffold(
// //       backgroundColor: ColorsManager.moreLightBlue,
// //       appBar: AppBar(
// //         backgroundColor: ColorsManager.moreLightBlue,
// //         elevation: 0,
// //         automaticallyImplyLeading: false, // عشان نشيل الباك الافتراضي
// //         title: Text(
// //           isUpdateMode ? 'Update Job' : 'Create New Job',
// //           style: Theme.of(context).textTheme.titleMedium,
// //         ),
// //         centerTitle: true,
// //         leading: const CustomBackButton(), // ← الباك بوتن الخاص بيك
// //       ),
// //       body:GestureDetector(
// //         onTap: () => FocusScope.of(context).unfocus(),
// //         child: ManageJobConsumer(
// //           job: widget.job,
// //           isUpdateMode: isUpdateMode,
// //           selectedSkills: _finalSelectedSkills,
// //           onSkillsChanged: (skills) => _finalSelectedSkills = skills,
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/di/dependency_injection.dart';
// import 'package:grad_comp/core/theming/colors.dart';
// import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/manage_job_consumer.dart';
// import '../../../core/theming/styles.dart';
// import '../../../core/widgets/custom_back_button.dart';
// import '../data/models/dashboard_screen/dashboard_job_model.dart';
// import '../logic/manage_job/manage_job_cubit.dart';
//
// class ManageJobScreen extends StatefulWidget {
//   final DashboardJobModel? job;
//
//   const ManageJobScreen({super.key, this.job});
//
//   @override
//   State<ManageJobScreen> createState() => _ManageJobScreenState();
// }
//
// class _ManageJobScreenState extends State<ManageJobScreen> {
//   late bool salaryNegotiable;
//   late bool hiringMultiple;
//   late String selectedPaymentPeriod;
//   List<String> _finalSelectedSkills = [];
//
//   bool get isUpdateMode => widget.job != null;
//
//   @override
//   void initState() {
//     super.initState();
//     final cubit = context.read<ManageJobCubit>();
//
//     if (isUpdateMode) {
//       cubit.initializeForUpdate(widget.job!);
//       print('2. ManageJobScreen initialized with skills: $_finalSelectedSkills');
//
//     }
//
//     salaryNegotiable = cubit.salaryNegotiable;
//     hiringMultiple = cubit.hiringMultiple;
//     selectedPaymentPeriod = cubit.selectedPaymentPeriod;
//
//     _finalSelectedSkills = List.from(cubit.selectedSkills);
//     //cubit.selectedSkills = List.from(_finalSelectedSkills); // مزامنة فورية
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorsManager.white,
//       appBar: AppBar(
//         backgroundColor: ColorsManager.white,
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Text(
//           isUpdateMode ? 'Update Job' : 'Create New Job',
//           style: TextStyles.font16BlackBold.copyWith(
//         color: Colors.grey.shade800,
//             fontWeight: FontWeight.w500,
//             fontSize: 22
//         ),
//         ),
//         centerTitle: true,
//         leading: const CustomBackButton(),
//       ),
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: ManageJobConsumer(
//           job: widget.job,
//           isUpdateMode: isUpdateMode,
//           selectedSkills: _finalSelectedSkills,
//           onSkillsChanged: (skills) {
//             _finalSelectedSkills = skills;
//             // التحديث الفوري داخل الكيوبت
//             context.read<ManageJobCubit>().selectedSkills
//               ..clear()
//               ..addAll(skills);
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_state.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/job_form_body.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/manage_job_widgets/loading_overlay.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../data/models/dashboard_screen/dashboard_job_model.dart';

class ManageJobScreen extends StatelessWidget {
  final DashboardJobModel? job;
  const ManageJobScreen({super.key, this.job});

  @override
  Widget build(BuildContext context) {
    final bool isUpdateMode = job != null;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          isUpdateMode ? 'Update Job' : 'Create New Job',
          style: TextStyles.font16BlackBold.copyWith(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
              fontSize: 22),
        ),
        centerTitle: true,
        leading: const CustomBackButton(),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<ManageJobCubit, ManageJobState>(
          listener: (context, state) {
            switch (state) {
              case ManageJobSuccess(response: final response):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(response.message ?? 'Operation Successful!'),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.of(context).pop(true);
                break;
              case ManageJobError(apiErrorModel: final apiErrorModel):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(apiErrorModel.message ?? 'An error occurred.'),
                    backgroundColor: Colors.red,
                  ),
                );
                break;
              default:
                break;
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                const JobFormBody(),
                if (state is ManageJobLoading) const LoadingOverlay(),
              ],
            );
          },
        ),
      ),
    );
  }
}
