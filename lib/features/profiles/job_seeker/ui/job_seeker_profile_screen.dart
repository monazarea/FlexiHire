import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/applied_jobs_tab/applied_jobs_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_state.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/widgets/tabs/applied_jobs_tab.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/widgets/tabs/followed_companies_tab.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/widgets/tabs/profile_details_tab.dart';
import 'package:grad_comp/features/profiles/job_seeker/ui/widgets/tabs/review_tab.dart';
import 'package:grad_comp/features/profiles/widgets/profile_header.dart';
import '../logic/followed_companies_tab/followed_companies_cubit.dart';
import '../logic/reviews_tab/reviews_list_cubit.dart';

class JobSeekerProfileScreen extends StatelessWidget {
  final bool isOwner;

  const JobSeekerProfileScreen({
    super.key,
    required this.isOwner,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobSeekerProfileCubit, JobSeekerProfileState>(
      builder: (context, state) {
        switch (state) {
          case GetProfileLoading():
            return const Scaffold(body: Center(child: CircularProgressIndicator()));

          case GetProfileError(:final apiErrorModel):
            return Scaffold(body: Center(child: Text(apiErrorModel.message ?? 'Error')));

          case GetProfileSuccess(userData: final profileData):
            final List<Tab> tabs = [
              const Tab(text: "Profile"),
              const Tab(text: "Following"),
            ];

            final List<Widget> tabViews = [
              ProfileDetailsTab(profileData: profileData, isOwner: isOwner),
              BlocProvider(
                create: (context) => FollowedCompaniesCubit(getIt(), profileData.id.toString()),
                child: FollowedCompaniesTab(isOwner: isOwner),
              ),

            ];

            if (isOwner) {
              tabs.insert(1, const Tab(text: "Applied"));
              tabs.insert(2, const Tab(text: "Reviews"));
              tabViews.insert(1,  BlocProvider(
                create: (context) => getIt<AppliedJobsCubit>(),
                child: const AppliedJobsTab(),
              ));
              tabViews.insert(2, BlocProvider(
                create: (context) => getIt<ReviewsListCubit>()..fetchInitialReviews(),
                child: const ReviewsTab(),
              ),);
            }

            return DefaultTabController(
              length: tabs.length,
              child: Scaffold(
                backgroundColor: Colors.grey.shade50,
                body: Column(
                  children: [
                    ProfileHeader(
                      userId: profileData.id.toString(),
                      isOwner: isOwner,
                      name: '${profileData.firstName} ${profileData.lastName}',
                      title: profileData.job?.name ?? 'No title specified',
                      profileImageUrl: profileData.imageUrl ?? '',
                      backgroundImageUrl: profileData.backgroundUrl ?? '',
                    ),
                    SizedBox(height: 16.h),

                    // --- تم تعديل هذا الجزء بالكامل ---
                    Container(
                      height: 35.h,
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        tabs: tabs,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: TextStyles.font14DarkW500.copyWith(fontSize: 13.sp,fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyles.font14DarkW500.copyWith(fontSize: 12.sp,fontWeight: FontWeight.w500),
                        indicatorSize: TabBarIndicatorSize.tab,
                        splashFactory: NoSplash.splashFactory,
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: ColorsManager.primary.withOpacity(0.8),
                        ),
                      ),
                    ),
                    // ------------------------------------

                    Expanded(
                      child: TabBarView(
                        children: tabViews,
                      ),
                    ),
                  ],
                ),
              ),
            );

          default:
            return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}