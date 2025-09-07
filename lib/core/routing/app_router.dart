import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/routing/routes.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/widgets/main_app_shell.dart';
import 'package:grad_comp/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:grad_comp/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:grad_comp/features/auth/sign_up/logic/sign_up_state.dart';
import 'package:grad_comp/features/home/logic/companies/top_companies_cubit.dart';
import 'package:grad_comp/features/home/logic/recent_jobs/recent_jobs_cubit.dart';
import '../../features/about_us/about_us_screen.dart';
import '../../features/auth/login/logic/cubit/login_cubit.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/logout/ui/widgets/logout_handler.dart';
import '../../features/auth/reset_password/logic/reset_password_cubit.dart';
import '../../features/auth/reset_password/logic/reset_password_screen_args.dart';
import '../../features/auth/reset_password/ui/reset_password_screen.dart';
import '../../features/auth/sign_up/logic/sign_up_cubit.dart';
import '../../features/auth/sign_up/ui/sign_up_screen.dart';

import '../../features/change_password/ui/change_password_screen.dart';
import '../../features/chat_bot/chat_screen.dart';
import '../../features/companies/ui/companies_screen.dart';
import '../../features/dashboard/data/models/applicants/job_proposal_model.dart';
import '../../features/dashboard/data/models/dashboard_screen/dashboard_job_model.dart';
import '../../features/dashboard/logic/applicants/job_applicants_cubit.dart';
import '../../features/dashboard/logic/dashboard_screen/posted_jobs_cubit.dart';
import '../../features/dashboard/logic/delete_job/delete_job_cubit.dart';
import '../../features/dashboard/logic/manage_job/manage_job_cubit.dart';
import '../../features/dashboard/ui/job_applicants_screen.dart';
import '../../features/dashboard/ui/manage_job_screen.dart';
import '../../features/dashboard/ui/dashboard_screen.dart';
import '../../features/dashboard/ui/proposal_details_screen.dart';
import '../../features/edit_profile/logic/edit_description/update_description_cubit.dart';
import '../../features/edit_profile/logic/edit_email/update_email_cubit.dart';
import '../../features/edit_profile/logic/edit_name/edit_name_cubit.dart';
import '../../features/edit_profile/logic/update_image/update_cover_image_cubit.dart';
import '../../features/edit_profile/logic/update_image/update_profile_image_cubit.dart';
import '../../features/edit_profile/ui/edit_profile_screen.dart';
import '../../features/home/logic/recommended_jobs/recommended_jobs_cubit.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/job_details/ui/job_deatils_screen.dart';
import '../../features/job_seekers/ui/job_seekers_screen.dart';
import '../../features/jobs/ui/jobs_screen.dart';
import '../../features/notifcation/logic/notifications_cubit.dart';
import '../../features/notifcation/ui/notifications_screen.dart';
import '../../features/notifcation/ui/widgets/applied_jobs_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/profiles/company/logic/company_profile_cubit.dart';
import '../../features/profiles/company/ui/company_profile_screen.dart';
import '../../features/profiles/company/ui/widgets/company_profile_screen_args.dart';
import '../../features/profiles/job_seeker/logic/applied_jobs_tab/applied_jobs_cubit.dart';
import '../../features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';
import '../../features/profiles/job_seeker/ui/job_seeker_profile_screen.dart';
import '../../features/profiles/job_seeker/ui/widgets/applied_tab_widgets/view_proposal_screen.dart';
import '../../features/profiles/widgets/image_viewer_screen.dart';
import '../../features/report/ui/report_screen.dart';
import '../../features/saved_jobs/logic/saved_jobs_cubit.dart';
import '../../features/saved_jobs/ui/saved_jobs_screen.dart';
import '../../features/search/ui/search_screen.dart';
import '../../features/search/ui/search_screen_args.dart';
import '../helpers/constants.dart';
import '../helpers/shared_pref_helper.dart';


class AppRouter {
  Route ? generateRoute(RouteSettings settings) {
    //this arguments to passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => OnboardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                )
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: SignUpScreen(),
                )
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<ForgetPasswordCubit>(),
                  child: ForgetPasswordScreen(),
                )
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => LogoutHandler( // <-- 1. نستخدم الغلاف الجديد هنا
            child: MultiBlocProvider( // 2. الـ MultiBlocProvider أصبح ابناً له
              providers: [
                BlocProvider(create: (context) => getIt<TopCompaniesCubit>()..getTopCompanies()),
                BlocProvider(create: (context) => getIt<RecentJobsCubit>()..fetchRecentJobs()),
                BlocProvider(create: (context) => getIt<RecommendedJobsCubit>()..fetchRecommendedJobs()),
                BlocProvider(create: (context) => getIt<NotificationsCubit>()..getNotifications()),
              ],
              child: const MainAppShell(),
            ),
          ),
        );

      case Routes.jobSeekerProfileScreen:
        final jobSeekerId = settings.arguments as String;
        final loggedInUserId = SharedPrefHelper.getInt(SharedPrefKeys.userId).toString();
        final bool isOwner = (loggedInUserId == jobSeekerId);

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<JobSeekerProfileCubit>()..getJobSeekerProfile(jobSeekerId),
            child: JobSeekerProfileScreen(isOwner: isOwner,),
          ),
        );



      case Routes.companyProfileScreen:
        late final CompanyProfileScreenArgs args;
        if (settings.arguments is CompanyProfileScreenArgs) {
          args = settings.arguments as CompanyProfileScreenArgs;
        } else if (settings.arguments is String) {
          args = CompanyProfileScreenArgs(companyId: settings.arguments as String);
        } else {
          // fallback
          return MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text('Invalid Arguments'))));
        }
        final loggedInUserId = SharedPrefHelper.getInt(SharedPrefKeys.userId).toString();
        final bool isOwner = (loggedInUserId == args.companyId);

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CompanyProfileCubit>()..getCompanyProfile(args.companyId),
            child: CompanyProfileScreen(args: args, isOwner: isOwner),
          ),
        );


      case Routes.editProfileScreen:
        final profileData = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              //BlocProvider(create: (context) => getIt<EditNameCubit>()),
              //BlocProvider(create: (context) => getIt<UpdateDescriptionCubit>()),
              BlocProvider(create: (context) => getIt<UpdateEmailCubit>()),

              BlocProvider(create: (context) => getIt<UpdateProfileImageCubit>()),
              BlocProvider(create: (context) => getIt<UpdateCoverImageCubit>()),
            ],
            child: EditProfileScreen(profileData: profileData),
          ),
        );

      case Routes.searchScreen:
        final args = settings.arguments as SearchScreenArgs;
        return MaterialPageRoute(
          builder: (_) => SearchScreen(
            initialSearchType: args.initialSearchType,
            isTypeLocked: args.isTypeLocked,
          ),
        );

      case Routes.jobDetailsScreen:
        final jobId = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => JobDetailsScreen(jobId: jobId),
        );

      case Routes.notificationsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<NotificationsCubit>()..getNotifications(),
            child: const NotificationsScreen(),
          ),
        );

      case Routes.viewProposalScreen:
        final proposal = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => ViewProposalScreen(proposal: proposal),
          fullscreenDialog: true, // لجعل الشاشة تظهر من الأسفل
        );

      case Routes.jobsScreen:
        return MaterialPageRoute(
          builder: (_) => const JobsScreen(),
        );

      case Routes.companiesScreen:
        return MaterialPageRoute(
          builder: (_) => const CompaniesScreen(),
        );

      case Routes.jobSeekersScreen:
        return MaterialPageRoute(
          builder: (_) => const JobSeekersScreen(),
        );

      case Routes.dashboardScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<PostedJobsCubit>()),
              BlocProvider(create: (context) => getIt<DeleteJobCubit>()),
            ],
            child: const DashboardScreen(),
          ),
        );

      case Routes.createJobScreen:
        return MaterialPageRoute(
          builder: (_) => const ManageJobScreen(),
        );

      case Routes.updateJobScreen:
        return MaterialPageRoute(
          builder: (_) => const ManageJobScreen(),
        );

      case Routes.manageJobScreen:
        final job = settings.arguments as DashboardJobModel?;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ManageJobCubit(getIt(), initialJob: job),
            child: ManageJobScreen(job: job),
          ),
        );

      case Routes.jobApplicantsScreen:
        final arguments = settings.arguments as Map<String, dynamic>;
        final jobId = arguments['jobId'] as int;
        final highlightNew = arguments['highlightNew'] as bool? ?? false; // القيمة الافتراضية false

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<JobApplicantsCubit>()..fetchInitialApplicants(jobId),
            child: JobApplicantsScreen(jobId: jobId, highlightNew: highlightNew),
          ),
        );

      case Routes.proposalDetailsScreen:
        final proposal = settings.arguments as JobProposalModel;
        return MaterialPageRoute(
          builder: (_) => ProposalDetailsScreen(proposal: proposal),
        );

      case Routes.savedJobsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SavedJobsCubit>()..fetchInitialJobs(),
            child: const SavedJobsScreen(),
          ),
        );

      case Routes.changePasswordScreen:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());

      case Routes.imageViewerScreen:
        final imageUrl = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => ImageViewerScreen(imageUrl: imageUrl));

      case Routes.aiChatBotScreen:
        final arguments = settings.arguments;

        if (arguments is String?) {
          return MaterialPageRoute(
            builder: (_) => ChatScreen(userImageUrl: arguments), // 3. تمرير الصورة إلى الشاشة
          );
        } else {
          return MaterialPageRoute(
            builder: (_) => const ChatScreen(),
          );
        }


      case Routes.appliedJobsScreen:
        final highlightJobId = settings.arguments as int?; // نستقبل الـ ID كـ optional
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AppliedJobsCubit>()..fetchAppliedJobs(),
            child: AppliedJobsScreen(highlightJobId: highlightJobId),
          ),
        );

      case Routes.reportScreen:
        final reportedUserId = settings.arguments as int;
        return MaterialPageRoute(
          // لا نحتاج لـ BlocProvider هنا لأننا سنوفره في ReportScreen نفسها
          builder: (_) => ReportScreen(reportedUserId: reportedUserId),
        );

      case Routes.aboutUsScreen:
        return MaterialPageRoute(
          builder: (_) => const AboutUsScreen(),
        );

      case Routes.resetPasswordScreen:
        final args = settings.arguments as ResetPasswordScreenArgs;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: ResetPasswordScreen(args: args),
          ),
        );

      default:
        return null;
    }
  }

}