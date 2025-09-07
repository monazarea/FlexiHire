import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/features/profiles/company/logic/company_profile_cubit.dart';
import 'package:grad_comp/features/profiles/company/ui/company_profile_screen.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/job_seeker_profile_screen.dart';

import '../company/ui/widgets/company_profile_screen_args.dart';

class MyProfileTabScreen extends StatelessWidget {
  const MyProfileTabScreen({super.key});

  // دالة مساعدة لجلب البيانات معاً
  Future<Map<String, dynamic>> _getUserData() async {
    final role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
    final id = await SharedPrefHelper.getInt(SharedPrefKeys.userId);
    return {'role': role, 'id': id};
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _getUserData(), // 1. الـ Future الذي ننتظره
      builder: (context, snapshot) {
        // 2. أثناء انتظار البيانات، اعرض شاشة تحميل
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // 3. في حالة وجود خطأ أو عدم وجود بيانات
        if (snapshot.hasError || !snapshot.hasData || snapshot.data == null) {
          return const Center(child: Text('Error loading user profile.'));
        }

        // 4. بعد وصول البيانات بنجاح
        final userRole = snapshot.data!['role'] as String?;
        final userIdInt = snapshot.data!['id'] as int?;

        if (userRole == null || userIdInt == null) {
          return const Center(child: Text('Error: User data not found.'));
        }

        final userId = userIdInt.toString();

        if (userRole == 'company') {
          final args = CompanyProfileScreenArgs(companyId: userId);
          return BlocProvider(
            create: (context) => getIt<CompanyProfileCubit>()..getCompanyProfile(userId),
            child: CompanyProfileScreen(isOwner: true,args: args,),
          );
        } else {
          return BlocProvider(
            create: (context) => getIt<JobSeekerProfileCubit>()..getJobSeekerProfile(userId),
            child: JobSeekerProfileScreen(isOwner:true,),
          );
        }
      },
    );
  }
}