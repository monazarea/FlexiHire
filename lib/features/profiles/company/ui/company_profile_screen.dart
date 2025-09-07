import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/features/profiles/company/logic/company_profile_cubit.dart';
import 'package:grad_comp/features/profiles/company/logic/company_profile_state.dart';
import 'package:grad_comp/features/profiles/company/ui/widgets/company_profile_screen_args.dart';
import 'package:grad_comp/features/profiles/company/ui/widgets/tabs/company_followers_tab.dart';
import 'package:grad_comp/features/profiles/company/ui/widgets/tabs/company_jobs_tab.dart';
import 'package:grad_comp/features/profiles/company/ui/widgets/tabs/company_profile_details_tab.dart';
import 'package:grad_comp/features/profiles/company/ui/widgets/tabs/company_reviews_tab.dart';
import 'package:grad_comp/features/profiles/widgets/profile_header.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/constants.dart';
import '../logic/followers_tab/followers_cubit.dart';

class CompanyProfileScreen extends StatelessWidget {
  final bool isOwner;
  final CompanyProfileScreenArgs args;

  const CompanyProfileScreen({
    super.key,
    required this.isOwner,
    required this.args,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyProfileCubit, CompanyProfileState>(
      builder: (context, state) {
        switch (state) {
          case CompanyProfileLoading():
            return const Scaffold(body: Center(child: CircularProgressIndicator()));

          case CompanyProfileError(:final apiErrorModel):
            return Scaffold(body: Center(child: Text(apiErrorModel.message ?? 'Error')));

          case CompanyProfileSuccess(data: final companyResponse):
            final companyData = companyResponse?.data;
            if (companyData == null) {
              return const Scaffold(body: Center(child: Text('Company Data Not Found')));
            }

            final List<Tab> tabs = [
              const Tab(text: "Profile"),
              const Tab(text: "Jobs"),
              const Tab(text: "Reviews"),
              const Tab(text: "Followers"),
            ];

            final List<Widget> tabViews = [
              CompanyAboutTab(companyData: companyData,isOwner: isOwner,onRateSuccess: () {
                context
                    .read<CompanyProfileCubit>()
                    .getCompanyProfile(companyData.id.toString());
              },),
              CompanyJobsTab(jobs: companyData.jobs,highlightJobId: args.highlightJobId,),
              CompanyReviewsTab(company: companyData),
              BlocProvider(
                create: (context) => FollowersCubit(getIt(), companyData.id.toString()),
                child: const FollowersTab(),
              ),
            ];

            // 2. بناء الواجهة بنفس هيكل شاشة الباحث عن عمل
            return DefaultTabController(
              initialIndex: args.initialTabIndex,
              length: tabs.length,
              child: Scaffold(
                backgroundColor: Colors.grey.shade50,
                body: Column(
                  children: [
                    ProfileHeader(
                      userId: companyData.id.toString(),
                      fallBackImage: companyReplacementImage,
                      isOwner: isOwner,
                      name: '${companyData.firstName ?? ''} ${companyData.lastName ?? ''}'.trim().isEmpty
                          ? 'Company Name'
                          : '${companyData.firstName ?? ''} ${companyData.lastName ?? ''}'.trim(),
                      title: companyData.location ?? 'No location specified',
                      profileImageUrl: companyData.imageUrl ?? '',
                      backgroundImageUrl: companyData.backgroundUrl ?? '',
                      averageRating: companyData.reviews?.averageRating,
                      reviewCount: companyData.reviews?.count,
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      height: 35.h,
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              blurRadius: 10,
                            )
                          ]
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        tabs: tabs,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey.shade600,
                        labelStyle: TextStyles.font14DarkW500.copyWith(fontSize: 13,fontWeight: FontWeight.bold),
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