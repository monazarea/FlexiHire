// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:grad_comp/core/theming/colors.dart';
// import 'package:grad_comp/core/widgets/info_row.dart';
// import 'package:grad_comp/core/widgets/job_info_widget.dart';
// import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
//
// import '../routing/routes.dart';
// import 'custom_network_image.dart';
//
// class HorizontalJobCard extends StatelessWidget {
//   final JobModel job;
//   final VoidCallback? onTap;
//
//   const HorizontalJobCard({
//     super.key,
//     required this.job,
//     this.onTap,
//   });
//
//   static const String fallbackImage = 'assets/images/job_replacement.png';
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 280.w,
//       child: Card(
//         color: Colors.white,
//         elevation: 4.0,
//         shadowColor: Colors.black.withOpacity(0.5),
//         margin: const EdgeInsets.symmetric(vertical: 8.0),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: InkWell(
//           onTap: () {
//             Navigator.pushNamed(
//               context, Routes.jobDetailsScreen,
//               arguments: job.id.toString(), // نرسل ID الوظيفة
//             );
//           },
//           borderRadius: BorderRadius.circular(20),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//             child: Center(
//               child: JobInfoSection(
//                 job: job,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'package:grad_comp/core/widgets/job_info_widget.dart';
import '../routing/routes.dart';

class HorizontalJobCard extends StatelessWidget {
  final JobModel job;

  const HorizontalJobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.w,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        elevation: 3,
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.jobDetailsScreen,
                arguments: job.id.toString());
          },
          borderRadius: BorderRadius.circular(20.r),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JobInfoSection(job: job),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


