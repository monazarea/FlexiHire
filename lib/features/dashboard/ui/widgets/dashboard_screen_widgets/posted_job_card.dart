import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/features/dashboard/data/models/dashboard_screen/dashboard_job_model.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/delete_confirmation_dialog.dart';
import '../../../logic/applicants/job_applicants_cubit.dart';
import '../../../logic/dashboard_screen/posted_jobs_cubit.dart';
import '../../../logic/delete_job/delete_job_cubit.dart';

class PostedJobCard extends StatelessWidget {
  final DashboardJobModel job;

  const PostedJobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),

      color: Colors.white,
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.08),
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: ColorsManager.primary.withOpacity(0.3), width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(job.title, style: TextStyles.font18BlackBold),
                  SizedBox(height: 16.h),
                  _buildInfoRow(
                    'Posted Date',
                    job.datePosted ?? 'N/A',
                    icon: Icons.calendar_today_outlined,
                  ),
                  SizedBox(height: 8.h),
                  _buildInfoRow(
                    'Applicants',
                    job.applicationsCount ?? '0',
                    //icon: Icons.group_outlined,
                  ),
                  const Divider(height: 32),
                  _buildActionButtons(context),
                ],
            ),
          ),
        );
  }

  Widget _buildInfoRow(String label, String value, {IconData? icon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyles.font13GrayW400),
        Row(
          children: [
            if(Icon!=null)
            Icon(icon, color: Colors.grey.shade600, size: 16),
            SizedBox(width: 8.w),
            Text(value, style: TextStyles.font14DarkW500),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Action', style: TextStyles.font13GrayW400),
        Row(
          children: [
            _actionButton(Icons.edit_outlined, Colors.blue,
                    () async {
                      final result = await context.pushNamed(
                        Routes.manageJobScreen,
                        arguments: job,
                      );
                      if (result == true && context.mounted) {
                        context.read<PostedJobsCubit>().fetchInitialJobs();
                      }
              }
            ),
            SizedBox(width: 8.w),
            _actionButton(Icons.delete_outline, Colors.red, () async { // <-- أصبح async
              final confirm = await showDeleteConfirmationDialog(
                context: context,
                title: 'Delete Job', // <-- عنوان مخصص
                content: 'Are you sure you want to permanently delete this job posting?', // <-- محتوى مخصص
              );
              if (confirm == true) {
                context.read<DeleteJobCubit>().deleteJob(job.id);
              }
            }),
            SizedBox(width: 8.w),
            _actionButton(Icons.group_outlined, ColorsManager.primary, () {
              context.pushNamed(Routes.jobApplicantsScreen, arguments: {'jobId': job.id, } );
            }),
          ],
        ),
      ],
    );
  }

  Widget _actionButton(IconData icon, Color color, VoidCallback onPressed) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        icon: Icon(icon, color: color, size: 22),
        onPressed: onPressed,
      ),
    );
  }
}