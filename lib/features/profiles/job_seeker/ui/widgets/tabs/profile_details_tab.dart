import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';

import '../profile_tab_widget/cv_section.dart';
import '../profile_tab_widget/description_section.dart';
import '../profile_tab_widget/skills_section.dart';


class ProfileDetailsTab extends StatelessWidget {
  final JobSeekerProfileData profileData;
  final bool isOwner;

  const ProfileDetailsTab({
    super.key,
    required this.profileData,
    required this.isOwner,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      children: [
        DescriptionSection(
          description: profileData.description,
          title: 'About Me',
        ),
        SizedBox(height: 24.h),

        SkillsSection(
          skills: profileData.skills,
        ),
        SizedBox(height: 24.h),

        // --- قسم السيرة الذاتية (CV) ---
        CvSection(
          cvUrl: profileData.cv,
          firstName: profileData.firstName,
          lastName: profileData.lastName,
        ),

        // --- زر "Contact Me" (يظهر للزائر فقط) ---
        if (!isOwner)
          Padding(
            padding: EdgeInsets.only(top: 32.h),
            child: AppTextButton(
              buttonText: "Contact Me",
              onPressed: () {
                debugPrint('Contact Me button tapped');
              },
              textStyle: TextStyles.font16WhiteW600,
              backgroundColor: ColorsManager.primary.withOpacity(0.7),
            ),
          ),
      ],
    );
  }
}