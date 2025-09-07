import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/features/profiles/company/data/models/company_profile_response.dart';
import 'package:grad_comp/features/profiles/company/logic/company_profile_cubit.dart';
import 'package:grad_comp/features/profiles/company/logic/company_profile_state.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_state.dart';

import '../../home/data/models/companies/company_model.dart';
import '../job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';

class ProfileMenuHandler {
  static Future<void> handleSelection(String value, BuildContext context) async {
    switch (value) {
      case 'edit_profile':
        dynamic profileData;
        String? profileId;
        try {
          final companyState = context.read<CompanyProfileCubit>().state;
          if (companyState is CompanyProfileSuccess) {
            print('HANDLER: Profile is not in a success state. Cannot edit.');
            profileData = companyState.data.data!;
            profileId = profileData.id.toString();

          }
        } catch (e) {
          try {
            final jobSeekerState = context.read<JobSeekerProfileCubit>().state;
            if (jobSeekerState is GetProfileSuccess) {
              profileData = jobSeekerState.userData;
              profileId = profileData.id.toString();
            }
          } catch (e) {

          }
        }

        if (profileData == null) {
          print('💀💀💀💀💀💀💀💀Profile data is null, cannot navigate.');
          return;
        }
        print('✨✨✨✨✨✨✨✨Sending to Edit Screen -> First Name: ${profileData.firstName}, Last Name: ${profileData.lastName}');
        final result = await context.pushNamed(
          Routes.editProfileScreen,
          arguments: profileData,
        );

        // ٤. إذا كانت النتيجة true (أي حدث تغيير)
        if (result == true && context.mounted) {
          // ٥. نقوم بتحديث الكيوبت الصحيح
            if (profileData is CompanyProfileData) {
            context.read<CompanyProfileCubit>().getCompanyProfile(profileId!);
          } else if (profileData is JobSeekerProfileData) {
            context.read<JobSeekerProfileCubit>().getJobSeekerProfile(profileId!);
          }
        }
        // -- ^ نهاية التعديل ^ --
        break;
      case 'report':
        int? reportedUserId;
        try {
          final companyState = context.read<CompanyProfileCubit>().state;
          if (companyState is CompanyProfileSuccess) {
            reportedUserId = companyState.data.data!.id;
          }
        } catch (e) {
          final jobSeekerState = context.read<JobSeekerProfileCubit>().state;
          if (jobSeekerState is GetProfileSuccess) {
            reportedUserId = jobSeekerState.userData.id;
          }
        }

        // ننتقل لشاشة الإبلاغ فقط إذا وجدنا ID
        if (reportedUserId != null) {
          context.pushNamed(Routes.reportScreen, arguments: reportedUserId);
        }
        break;
    }
  }
}