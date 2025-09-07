// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grad_comp/core/theming/colors.dart';
// import 'package:grad_comp/core/theming/styles.dart';
// import 'package:grad_comp/core/widgets/info_row.dart';
// import 'package:grad_comp/core/widgets/job_info_widget.dart';
// import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
// import 'package:grad_comp/features/home/logic/recommended_jobs/recommended_jobs_cubit.dart';
// import 'package:grad_comp/features/jobs/logic/job_list_cubit.dart';
//
// import '../../features/save_job/ui/widgets/save_job_button_controller.dart';
// import '../../features/save_job/ui/widgets/save_job_button_ui.dart';
// import '../helpers/constants.dart';
// import '../helpers/shared_pref_helper.dart';
// import '../routing/routes.dart';
// import 'custom_network_image.dart';
// import 'highlited_text.dart';
//
// class VerticalJobCard extends StatefulWidget {
//   final JobModel job;
//   final String? highlightTerm;
//   final Function(bool isNowSaved)? onSaveStateChanged;
//
//
//   const VerticalJobCard({
//     super.key,
//     required this.job,
//     this.highlightTerm,
//     this.onSaveStateChanged,
//
//   });
//
//   static const String fallbackImage = 'assets/images/job_replacement.png';
//
//   @override
//   State<VerticalJobCard> createState() => _VerticalJobCardState();
// }
//
//
// class _VerticalJobCardState extends State<VerticalJobCard> {
//   String? _userRole;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadUserRole();
//   }
//
//   Future<void> _loadUserRole() async {
//     final role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
//     if (mounted) {
//       setState(() {
//         _userRole = role;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Card(
//       color: Colors.white,
//       elevation: 2.0,
//       shadowColor: ColorsManager.primary.withOpacity(0.4),
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: InkWell(
//         onTap: () {
//           Navigator.pushNamed(
//             context, Routes.jobDetailsScreen,
//             arguments: widget.job.id.toString(), // نرسل ID الوظيفة
//           );
//         },
//         borderRadius: BorderRadius.circular(16),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               SizedBox(width: 12.w),
//               Expanded(child: JobInfoSection(job: widget.job,highlightTerm: widget.highlightTerm,)),
//               SizedBox(width: 8.w),
//
//               if (_userRole == 'user')
//                 SaveJobButtonController(
//                   jobId: widget.job.id,
//                   initialIsSaved: widget.job.saved ?? false,
//                   onStateChanged: (isNowSaved) {
//                     // عند تغيير الحالة، نبلغ الكيوبت الأب بالتحديث
//                     context.read<RecommendedJobsCubit>().updateJobSavedState(widget.job.id, isNowSaved);
//                     context.read<JobsListCubit>().updateJobSavedState(widget.job.id,isNowSaved);
//                   },
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   TextStyle get _infoTextStyle => TextStyle(
//         fontSize: 14.sp,
//         color: Colors.grey.shade800,
//         fontWeight: FontWeight.w600,
//       );
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/job_info_widget.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'package:grad_comp/features/save_job/ui/widgets/save_job_button_controller.dart';

import '../../features/saved_jobs/logic/saved_jobs_cubit.dart';

class VerticalJobCard extends StatefulWidget {
  final JobModel job;
  final bool isNew;
  final String? highlightTerm;
  // 1. Add the new callback parameter here
  final Function(bool isNowSaved)? onSaveStateChanged;

  const VerticalJobCard({
    super.key,
    required this.job,
    this.highlightTerm,
    this.onSaveStateChanged, // 2. Add it to the constructor
    this.isNew = false,
  });

  @override
  State<VerticalJobCard> createState() => _VerticalJobCardState();
}

class _VerticalJobCardState extends State<VerticalJobCard> {
  String? _userRole;

  @override
  void initState() {
    super.initState();
    _loadUserRole();
  }

  Future<void> _loadUserRole() async {
    final role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
    if (mounted) {
      setState(() {
        _userRole = role;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.isNew ? ColorsManager.primary.withOpacity(0.1) : Colors.white,
      elevation: widget.isNew?0:2,
      shadowColor: ColorsManager.primary.withOpacity(0.4),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: widget.isNew
            ? BorderSide(color: ColorsManager.primary.withOpacity(0.6), width: 1.5)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.jobDetailsScreen,
            arguments: widget.job.id.toString(), // It's better to send the whole job object
          );

        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 12.w),
              Expanded(
                  child: JobInfoSection(
                      job: widget.job, highlightTerm: widget.highlightTerm)),
              SizedBox(width: 8.w),
              if (_userRole == 'user')
                SaveJobButtonController(
                  jobId: widget.job.id,
                  initialIsSaved: widget.job.saved ?? false,
                  // 3. Pass the callback down to the button controller
                  onStateChanged: widget.onSaveStateChanged,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
