import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/info_row.dart';
import 'package:grad_comp/features/job_seekers/data/models/job_seeker_list_item_model.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/highlited_text.dart';
import '../../../../core/widgets/reusable_action_button.dart';

class JobSeekerCard extends StatelessWidget {
  final JobSeekerListItemModel jobSeeker;
  final VoidCallback? onTap;
  final VoidCallback? onContactTapped;
  final String? highlightTerm;

  const JobSeekerCard({
    super.key,
    required this.jobSeeker,
    this.onTap,
    this.onContactTapped,
    this.highlightTerm,
  });

  @override
  Widget build(BuildContext context) {
    final String mainJobTitle =
    jobSeeker.jobs?.isNotEmpty == true ? jobSeeker.jobs!.first.name! : 'No title specified';

    return Card(
      color: Colors.white,
      elevation: 2.0,
      shadowColor: ColorsManager.primary.withOpacity(0.4),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          context.pushNamed(
            Routes.jobSeekerProfileScreen,
            arguments: jobSeeker.id.toString(),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50.w,
                height: 50.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  //border: Border.all(color: ColorsManager.primary.withOpacity(0.2)),
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: jobSeeker.imageUrl ?? '',
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Container(color: Colors.grey.shade200),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey.shade200,
                      child: Icon(Icons.person, color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HighlightedText(
                      text: '${jobSeeker.firstName ?? ''} ${jobSeeker.lastName ?? ''}',
                      highlight: highlightTerm,
                      style: TextStyles.font16BlackBold,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      mainJobTitle,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    if (jobSeeker.location != null)
                      InfoRow(
                        iconData: Icons.location_on_outlined,
                        text: jobSeeker.location ?? 'location not available',
                        iconColor: ColorsManager.primary,
                      ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              ActionButton(
                type: ActionButtonType.contact,
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
