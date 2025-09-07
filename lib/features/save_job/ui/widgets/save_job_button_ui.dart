// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/di/dependency_injection.dart';
// import 'package:grad_comp/core/theming/colors.dart';
// import 'package:grad_comp/features/save_job/data/repos/save_job_repository.dart';
// import 'package:grad_comp/features/save_job/logic/save_job_cubit.dart';
// import 'package:grad_comp/features/save_job/logic/save_job_state.dart';
//
// class SaveJobButton extends StatefulWidget {
//   final int jobId;
//   final bool initialIsSaved;
//
//
//   SaveJobButton({
//     super.key,
//     required this.jobId,
//     required this.initialIsSaved,
//   });
//
//   @override
//   State<SaveJobButton> createState() => _SaveJobButtonState();
// }
//
// class _SaveJobButtonState extends State<SaveJobButton> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => SaveJobCubit(
//         getIt<SaveJobRepository>(),
//         widget.jobId,
//         widget.initialIsSaved,
//       ),
//       child: BlocConsumer<SaveJobCubit, SaveJobState>(
//         listener: (context, state) {
//           // هذا المستمع يعرض الرسائل فقط
//           if (state.status == SaveStatus.success && state.successMessage != null) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(state.successMessage!),
//                 backgroundColor: Colors.green,
//               ),
//             );
//           }
//           if (state.status == SaveStatus.error && state.error != null) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(state.error!.message ?? 'An error occurred'),
//                 backgroundColor: Colors.red,
//               ),
//             );
//           }
//         },
//         builder: (context, state) {
//           // هذا البنّاء يعرض الواجهة فقط
//           final isLoading = state.status == SaveStatus.loading;
//
//           print("🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣");
//           print(state.isSaved);
//           return Container(
//             decoration: BoxDecoration(
//               color: Colors.grey.shade100,
//               border: Border.all(color: Colors.white, width: 1.0),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: IconButton(
//               onPressed: isLoading ? null : () => context.read<SaveJobCubit>().toggleSave(),
//               icon: isLoading
//                   ? const SizedBox.shrink()
//                   : Icon(
//                 state.isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
//                 color: state.isSaved ? ColorsManager.primary : Colors.grey.shade600,
//                 size: 28,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';

class SaveJobButtonUI extends StatelessWidget {
  final bool isSaved;
  final bool isLoading;
  final VoidCallback? onTap;

  const SaveJobButtonUI({
    super.key,
    required this.isSaved,
    required this.isLoading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: isLoading
          ? const Padding(
        padding: EdgeInsets.all(10.0),
        child: CircularProgressIndicator(strokeWidth: 2),
      )
          : IconButton(
        onPressed: onTap,
        icon: Icon(
          isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
          color: isSaved ? ColorsManager.primary : Colors.grey.shade600,
          size: 28,
        ),
      ),
    );
  }
}