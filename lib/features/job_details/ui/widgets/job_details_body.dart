import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/features/job_details/logic/job_details_cubit.dart';
import 'package:grad_comp/features/job_details/logic/job_details_state.dart';

import 'job_details_app_bar.dart';
import 'job_details_bottom_bar.dart';
import 'job_details_header.dart';
import 'job_details_info_section.dart';
import 'job_details_tags_section.dart';
import 'job_not_found_widget.dart';

// ١. تحويله إلى StatefulWidget
class JobDetailsBody extends StatefulWidget {
  const JobDetailsBody({super.key});

  @override
  State<JobDetailsBody> createState() => _JobDetailsBodyState();
}

class _JobDetailsBodyState extends State<JobDetailsBody> {
  static const String fallbackImage = 'assets/images/job_replacement.png';

  // ٢. إضافة متغير لتخزين حالة الحفظ
  late bool _isSaved;

  @override
  Widget build(BuildContext context) {
    // ٣. استخدام BlocConsumer للاستماع وتحديث الواجهة
    return BlocConsumer<JobDetailsCubit, JobDetailsState>(
      listener: (context, state) {
        // عند تحميل البيانات بنجاح لأول مرة، نقوم بتخزين حالة الحفظ
        if (state is JobDetailsSuccess) {
          _isSaved = state.jobDetailsResponse.isSaved ?? false;
        }
      },
      builder: (context, state) {
        switch (state) {
          case JobDetailsLoading():
            return const Scaffold(body: Center(child: CircularProgressIndicator()));

          case JobDetailsError(:final apiErrorModel):
            if (apiErrorModel.code == 422) {
              return const JobNotFoundWidget();
            }
            return Scaffold(body: Center(child: Text(apiErrorModel.message ?? 'Error')));

          case JobDetailsSuccess(jobDetailsResponse: final response):
            if (response.job == null) {
              return const Scaffold(body: Center(child: Text('Job not found')));
            }
            final job = response.job!;
            final hasApplied = response.hasApplied ?? false;

            return Scaffold(
              backgroundColor: Colors.white,
              appBar: JobDetailsAppBar(isSaved: _isSaved, appBarHeight: 70),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        JobDetailsHeader(job: job, fallbackImage: fallbackImage),
                        SizedBox(height: 20.h),
                        JobDetailsTagsSection(job: job),
                        SizedBox(height: 10.h),
                        const Divider(height: 32, thickness: 1),
                        SizedBox(height: 10.h),
                        JobDetailsInfoSection(job: job),
                        SizedBox(height: 10.h),
                        const Divider(height: 32, thickness: 1),
                        SizedBox(height: 10.h),
                        Text('Job Description', style: TextStyles.font18BlackBold),
                        SizedBox(height: 8.h),
                        Html(data: job.description ?? 'No description provided.'),
                        SizedBox(height: 120.h),
                      ],
                    ),
                  ),
                  JobDetailsBottomBar(
                    hasApplied: hasApplied,
                    isSaved: _isSaved, // <-- نستخدم المتغير المحلي هنا
                    jobId: job.id,
                    jobOwnerId: job.company.id,
                    onApplySuccess: () {
                      context.read<JobDetailsCubit>().fetchJobDetails(job.id.toString());
                    },
                    // ٤. نمرر دالة لتحديث الحالة عند تغييرها
                    onSaveStateChanged: (isNowSaved) {
                      setState(() {
                        _isSaved = isNowSaved;
                      });
                    },
                  ),
                ],
              ),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}