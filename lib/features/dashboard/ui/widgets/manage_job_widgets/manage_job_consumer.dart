// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../data/models/dashboard_screen/dashboard_job_model.dart';
// import '../../../logic/manage_job/manage_job_cubit.dart';
// import '../../../logic/manage_job/manage_job_state.dart';
// import 'job_form_body.dart';
// import 'loading_overlay.dart';
//
// class ManageJobConsumer extends StatefulWidget {
//   final DashboardJobModel? job;
//   final bool isUpdateMode;
//   final List<String> selectedSkills;
//   final ValueChanged<List<String>> onSkillsChanged;
//
//   const ManageJobConsumer({
//     super.key,
//     required this.job,
//     required this.isUpdateMode,
//     required this.selectedSkills,
//     required this.onSkillsChanged,
//   });
//
//   @override
//   State<ManageJobConsumer> createState() => _ManageJobConsumerState();
// }
//
// class _ManageJobConsumerState extends State<ManageJobConsumer> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ManageJobCubit, ManageJobState>(
//       listener: (context, state) {
//         switch (state) {
//           case ManageJobSuccess(response: final response):
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(response.message ?? 'Operation Successful!'),
//                 backgroundColor: Colors.green,
//               ),
//             );
//             Navigator.of(context).pop(true);
//             break;
//
//           case ManageJobError(apiErrorModel: final apiErrorModel):
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(apiErrorModel.getAllErrorMesseges() ?? 'An error occurred.'),
//                 backgroundColor: Colors.red,
//               ),
//             );
//             break;
//
//           default:
//             break;
//         }
//       },
//       builder: (context, state) {
//         return Stack(
//           children: [
//             JobFormBody(
//               job: widget.job,
//               isUpdateMode: widget.isUpdateMode,
//               selectedSkills: widget.selectedSkills,
//              onSkillsChanged: widget.onSkillsChanged,
//             ),
//             if (state is ManageJobLoading) const LoadingOverlay(),
//           ],
//         );
//       },
//     );
//   }
// }
