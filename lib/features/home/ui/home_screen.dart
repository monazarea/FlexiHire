//   import 'package:flutter/material.dart';
//   import 'package:flutter_screenutil/flutter_screenutil.dart';
//   import 'package:grad_comp/core/theming/colors.dart';
//   import 'package:grad_comp/features/home/ui/widgets/job_banner.dart';
//   import 'package:grad_comp/features/home/ui/widgets/recent_job_list/recent_job_bloc_builder.dart';
//   import 'package:grad_comp/features/home/ui/widgets/recommended_jobs/recommended_jobs_list.dart';
//   import 'package:grad_comp/features/home/ui/widgets/search_filter_bar.dart';
//   import 'package:grad_comp/features/home/ui/widgets/top_companies_list/top_companies_bloc_builder.dart';
//   import 'package:grad_comp/features/home/ui/widgets/welcome_header.dart';
//   import 'package:grad_comp/features/job_seekers/logic/job_seekers_list_cubit.dart';
//   import 'package:grad_comp/features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';
//
//   import '../../../core/helpers/constants.dart';
// import '../../../core/helpers/shared_pref_helper.dart';
// import '../../../core/routing/routes.dart';
//   import '../../../core/widgets/section_title.dart';
//   import '../../search/logic/search_type.dart';
//   import '../../search/ui/search_screen_args.dart';
//   import '../logic/companies/top_companies_cubit.dart';
//   import '../logic/recent_jobs/recent_jobs_cubit.dart';
//   import '../logic/recommended_jobs/recommended_jobs_cubit.dart';
//   import 'package:flutter_bloc/flutter_bloc.dart';
//
//   class HomeScreen extends StatefulWidget {
//     const HomeScreen({super.key});
//
//     @override
//     State<HomeScreen> createState() => _HomeScreenState();
//
//     Future<String> _getUserRole() async {
//       // نعطي قيمة افتراضية 'user' إذا لم نجد شيئًا
//       return (await SharedPrefHelper.getString(SharedPrefKeys.userRole) as String?) ?? 'user';
//     }
//   }
//
//   class _HomeScreenState extends State<HomeScreen> {
//     Future<void> _refreshData() async {
//       // هنا بنعيد استدعاء الـ Cubits المسؤولة عن البيانات
//       context.read<TopCompaniesCubit>().getTopCompanies();
//       context.read<RecentJobsCubit>().fetchRecentJobs(); // افترضي إنه Cubit شغال وبيجيب آخر الوظائف
//       context.read<RecommendedJobsCubit>().fetchRecommendedJobs();
//     }
//
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         backgroundColor: ColorsManager.moreLightBlue,
//         body: SafeArea(
//           child: RefreshIndicator(
//             onRefresh: _refreshData,
//             child: SingleChildScrollView(
//               physics: const AlwaysScrollableScrollPhysics(), // ضروري عشان يشتغل الـ Refresh
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 25.h),
//                   const JobBanner(),
//                   SizedBox(height: 20.h),
//                   const SectionTitle(title: 'Top Companies'),
//                   SizedBox(height: 10.h),
//                   const TopCompaniesBlocBuilder(),
//                   SizedBox(height: 10.h),
//                   const SectionTitle(title: 'Recent Jobs'),
//                   SizedBox(height: 10.h),
//                   if (userRole == 'user')
//                   // واجهة الباحث عن عمل (الأصلية)
//
//                   const RecentJobsBlocBuilder(),
//                   SizedBox(height: 20.h),
//                   const SectionTitle(title: 'Recommended Jobs'),
//                   SizedBox(height: 10.h),
//                   const RecommendedJobsList(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//   }
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/home/ui/widgets/job_banner.dart';
import 'package:grad_comp/features/home/ui/widgets/recent_job_list/recent_job_bloc_builder.dart';
import 'package:grad_comp/features/home/ui/widgets/recent_jobs_vertical_list.dart';
import 'package:grad_comp/features/home/ui/widgets/recommended_jobs/recommended_jobs_list.dart';
import 'package:grad_comp/features/home/ui/widgets/top_companies_list/top_companies_bloc_builder.dart';
import 'package:grad_comp/features/home/ui/widgets/welcome_header.dart';
import '../logic/companies/top_companies_cubit.dart';
import '../logic/recent_jobs/recent_jobs_cubit.dart';
import '../logic/recommended_jobs/recommended_jobs_cubit.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ١. الدالة الآن في مكانها الصحيح
  Future<String> _getUserRole() async {
    return (await SharedPrefHelper.getString(SharedPrefKeys.userRole) as String?) ?? 'user';
  }

  Future<void> _refreshData() async {
    context.read<TopCompaniesCubit>().getTopCompanies();
    context.read<RecentJobsCubit>().fetchRecentJobs();
    context.read<RecommendedJobsCubit>().fetchRecommendedJobs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      body: SafeArea(
        // ٢. نستخدم FutureBuilder هنا
        child: FutureBuilder<String>(
          future: _getUserRole(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return const Center(child: Text('Error loading user data.'));
            }

            final userRole = snapshot.data ?? 'user';

            // ٣. الواجهة الكاملة توضع هنا بعد وصول البيانات
            return RefreshIndicator(
              onRefresh: _refreshData,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const JobBanner(),
                    SizedBox(height: 20.h),
                    const SectionTitle(title: 'Top Companies'),
                    SizedBox(height: 10.h),
                    const TopCompaniesBlocBuilder(),
                    SizedBox(height: 10.h),
                    const SectionTitle(title: 'Recent Jobs'),
                    SizedBox(height: 10.h),

                    // ٤. الشرط الآن يعمل بشكل صحيح
                    if (userRole == 'user')
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const RecentJobsBlocBuilder(),
                          SizedBox(height: 20.h),
                          const SectionTitle(title: 'Recommended Jobs'),
                          SizedBox(height: 10.h),
                          const RecommendedJobsList(),
                        ],
                      )
                    else // واجهة الشركة
                      const RecentJobsVerticalList(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
