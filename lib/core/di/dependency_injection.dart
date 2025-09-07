import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/core/networking/dio_factory.dart';
import 'package:grad_comp/features/auth/forget_password/data/repos/forget_password_repo.dart';
import 'package:grad_comp/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:grad_comp/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:grad_comp/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:grad_comp/features/dashboard/data/repos/posted_jobs_repository.dart';
import 'package:grad_comp/features/home/logic/companies/top_companies_cubit.dart';
import 'package:grad_comp/features/home/logic/recent_jobs/recent_jobs_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/repos/applied_jobs_repo.dart';
import 'package:image_picker/image_picker.dart';
import '../../features/app_user/logic/user_cubit.dart';
import '../../features/apply_for_job/data/repos/apply_for_job_repository.dart';
import '../../features/apply_for_job/logic/apply_for_job_cubit.dart';
import '../../features/auth/login/data/repos/login_repo.dart';
import '../../features/auth/login/logic/cubit/login_cubit.dart';
import '../../features/auth/logout/data/repos/logout_repository.dart';
import '../../features/auth/logout/logic/logout_cubit.dart';
import '../../features/auth/reset_password/logic/reset_password_cubit.dart';
import '../../features/change_password/data/repos/change_password_repository.dart';
import '../../features/change_password/logic/change_password_cubit.dart';
import '../../features/companies/data/repos/companies_repository.dart';
import '../../features/companies/logic/companies_list_cubit.dart';
import '../../features/dashboard/data/repos/job_applicants_repository.dart';
import '../../features/dashboard/data/repos/manage_job_repository.dart';
import '../../features/dashboard/data/repos/delete_job_repository.dart';
import '../../features/dashboard/data/repos/update_application_status_repository.dart';
import '../../features/dashboard/logic/applicants/job_applicants_cubit.dart';
import '../../features/dashboard/logic/dashboard_screen/posted_jobs_cubit.dart';
import '../../features/dashboard/logic/delete_job/delete_job_cubit.dart';
import '../../features/dashboard/logic/manage_job/manage_job_cubit.dart';
import '../../features/dashboard/logic/update_status/update_application_status_cubit.dart';
import '../../features/edit_profile/data/repos/edit_profile_repo.dart';
import '../../features/edit_profile/logic/edit_cv/update_cv_cubit.dart';
import '../../features/edit_profile/logic/edit_description/update_description_cubit.dart';
import '../../features/edit_profile/logic/edit_email/update_email_cubit.dart';
import '../../features/edit_profile/logic/edit_name/edit_name_cubit.dart';
import '../../features/edit_profile/logic/update_image/update_cover_image_cubit.dart';
import '../../features/edit_profile/logic/update_image/update_profile_image_cubit.dart';
import '../../features/edit_profile/logic/update_skills_jobs/update_skills_jobs_cubit.dart';
import '../../features/follow/data/repos/follow_repository.dart';
import '../../features/get_skills_and_jobs/data/repos/skills_jobs_repository.dart';
import '../../features/get_skills_and_jobs/logic/skills_jobs_cubit.dart';
import '../../features/home/data/repos/home_repo.dart';
import '../../features/home/logic/recommended_jobs/recommended_jobs_cubit.dart';
import '../../features/job_details/data/repos/job_details_repository.dart';
import '../../features/job_details/logic/job_details_cubit.dart';
import '../../features/job_seekers/data/repos/job_seekers_repository.dart';
import '../../features/job_seekers/logic/job_seekers_list_cubit.dart';
import '../../features/jobs/data/repos/jobs_repository.dart';
import '../../features/jobs/logic/job_list_cubit.dart';
import '../../features/notifcation/data/repos/notifications_repository.dart';
import '../../features/notifcation/logic/notifications_cubit.dart';
import '../../features/profiles/company/data/repos/company_followers_repository.dart';
import '../../features/profiles/company/data/repos/company_profile_repo.dart';
import '../../features/profiles/company/logic/company_profile_cubit.dart';
import '../../features/profiles/job_seeker/data/repos/followed_companies_repository.dart';
import '../../features/profiles/job_seeker/data/repos/job_seeker_profile_repo.dart';
import '../../features/profiles/job_seeker/data/repos/reviews_repository.dart';
import '../../features/profiles/job_seeker/logic/applied_jobs_tab/applied_jobs_cubit.dart';
import '../../features/profiles/job_seeker/logic/followed_companies_tab/followed_companies_cubit.dart';
import '../../features/profiles/job_seeker/logic/profile_tab/job_seeker_profile_cubit.dart';
import '../../features/profiles/job_seeker/logic/reviews_tab/reviews_list_cubit.dart';
import '../../features/rate_company/data/repos/rate_company_repository.dart';
import '../../features/rate_company/logic/rate_company_cubit.dart';
import '../../features/report/data/repos/report_repository.dart';
import '../../features/report/logic/report_cubit.dart';
import '../../features/save_job/data/repos/save_job_repository.dart';
import '../../features/save_job/logic/save_job_update_service.dart';
import '../../features/saved_jobs/data/repos/saved_jobs_repository.dart';
import '../../features/saved_jobs/logic/saved_jobs_cubit.dart';
import '../../features/search/data/repos/search_repository.dart';
import '../../features/search/logic/search_cubit.dart';

final getIt = GetIt.instance;

Future<void>setUpGetIt()async{
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt()));

  // Signup
  getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(()=>SignUpCubit(getIt()));

  // ForgetPassword
  getIt.registerLazySingleton<ForgetPasswordRepo>(()=>ForgetPasswordRepo(getIt()));
  getIt.registerFactory<ForgetPasswordCubit>(()=>ForgetPasswordCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<TopCompaniesCubit>(() => TopCompaniesCubit(getIt()));
  getIt.registerFactory<RecentJobsCubit>(() => RecentJobsCubit(getIt()));
  getIt.registerFactory<RecommendedJobsCubit>(() => RecommendedJobsCubit(getIt(),getIt()));

  // Job Seeker Profile
  getIt.registerLazySingleton<JobSeekerProfileRepo>(() => JobSeekerProfileRepo(getIt()));
  getIt.registerFactory<JobSeekerProfileCubit>(() => JobSeekerProfileCubit(getIt()));

  // User Cubit (Global)
  //getIt.registerLazySingleton<UserCubit>(() => UserCubit());

  // Company Profile
  getIt.registerLazySingleton<CompanyProfileRepository>(() => CompanyProfileRepository(getIt()));
  getIt.registerFactory<CompanyProfileCubit>(() => CompanyProfileCubit(getIt()));


  // Edit Profile
  getIt.registerLazySingleton<EditProfileRepo>(() => EditProfileRepo(getIt()));
  // getIt.registerFactory<EditNameCubit>(() => EditNameCubit(getIt()));
  // getIt.registerFactory<UpdateDescriptionCubit>(() => UpdateDescriptionCubit(getIt()));
  getIt.registerFactory<UpdateEmailCubit>(() => UpdateEmailCubit(getIt()));
  getIt.registerFactory<UpdateSkillsJobsCubit>(() => UpdateSkillsJobsCubit(getIt()));
  getIt.registerFactory<UpdateCvCubit>(() => UpdateCvCubit(getIt()));


  // jobs Screen
  getIt.registerLazySingleton<JobsRepository>(() => JobsRepository(getIt()));
  getIt.registerFactory<JobsListCubit>(() => JobsListCubit(getIt(),getIt()));

  // Companies Screen
  getIt.registerLazySingleton<CompaniesRepository>(() => CompaniesRepository(getIt()));
  getIt.registerFactory<CompaniesListCubit>(() => CompaniesListCubit(getIt()));

  // JobSeekers Screen
  getIt.registerLazySingleton<JobSeekersRepository>(() => JobSeekersRepository(getIt()));
  getIt.registerFactory<JobSeekersListCubit>(() => JobSeekersListCubit(getIt()));

  // Search
  getIt.registerLazySingleton<SearchRepository>(() => SearchRepository(getIt()));
  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt()));

  // Job Details
  getIt.registerLazySingleton<JobDetailsRepository>(() => JobDetailsRepository(getIt()));
  getIt.registerFactory<JobDetailsCubit>(() => JobDetailsCubit(getIt()));

  // Apply For Job
  getIt.registerLazySingleton<ApplyForJobRepository>(() => ApplyForJobRepository(getIt()));
  getIt.registerFactory<ApplyForJobCubit>(() => ApplyForJobCubit(getIt()));

  getIt.registerLazySingleton<LogoutRepository>(() => LogoutRepository(getIt()));
  getIt.registerFactory<LogoutCubit>(() => LogoutCubit(getIt()));

  getIt.registerLazySingleton<AppliedJobsRepository>(() =>AppliedJobsRepository(getIt()));
  getIt.registerFactory<AppliedJobsCubit>(() => AppliedJobsCubit(getIt()));

  getIt.registerLazySingleton<SaveJobRepository>(() => SaveJobRepository(getIt()));

  getIt.registerLazySingleton<ReviewsRepository>(() => ReviewsRepository(getIt()));
  getIt.registerFactory<ReviewsListCubit>(() => ReviewsListCubit(getIt()));

  getIt.registerLazySingleton<FollowedCompaniesRepository>(() => FollowedCompaniesRepository(getIt()));

  getIt.registerLazySingleton<FollowRepository>(() => FollowRepository(getIt()));

  getIt.registerLazySingleton<CompanyFollowersRepository>(() => CompanyFollowersRepository(getIt()));

  getIt.registerLazySingleton<RateCompanyRepository>(() => RateCompanyRepository(getIt()));
  getIt.registerFactory<RateCompanyCubit>(() => RateCompanyCubit(getIt()));

  getIt.registerLazySingleton<PostedJobsRepository>(() => PostedJobsRepository(getIt()));
  getIt.registerFactory<PostedJobsCubit>(() => PostedJobsCubit(getIt()));

  getIt.registerLazySingleton<DeleteJobRepository>(() => DeleteJobRepository(getIt()));
  getIt.registerFactory<DeleteJobCubit>(() => DeleteJobCubit(getIt()));

  getIt.registerLazySingleton<ManageJobRepository>(() => ManageJobRepository(getIt()));
  getIt.registerFactory<ManageJobCubit>(() => ManageJobCubit(getIt()));

  getIt.registerLazySingleton<SkillsJobsRepository>(() => SkillsJobsRepository(getIt()));
  getIt.registerLazySingleton<SkillsJobsCubit>(() => SkillsJobsCubit(getIt()));

  getIt.registerLazySingleton<JobApplicantsRepository>(() => JobApplicantsRepository(getIt()));
  getIt.registerFactory<JobApplicantsCubit>(() => JobApplicantsCubit(getIt()));

  // in dependency_injection.dart
  getIt.registerLazySingleton<UpdateApplicationStatusRepository>(() => UpdateApplicationStatusRepository(getIt()));
  getIt.registerFactory<UpdateApplicationStatusCubit>(() => UpdateApplicationStatusCubit(getIt()));


  getIt.registerLazySingleton<SaveJobUpdateService>(() => SaveJobUpdateService());

  getIt.registerLazySingleton<SavedJobsRepository>(() => SavedJobsRepository(getIt()));
  getIt.registerFactory<SavedJobsCubit>(() => SavedJobsCubit(getIt(),getIt()));

  getIt.registerLazySingleton<ChangePasswordRepository>(() => ChangePasswordRepository(getIt()));
  getIt.registerFactory<ChangePasswordCubit>(() => ChangePasswordCubit(getIt()));

  getIt.registerFactory<UpdateProfileImageCubit>(() => UpdateProfileImageCubit(getIt()));
  getIt.registerFactory<UpdateCoverImageCubit>(() => UpdateCoverImageCubit(getIt()));

  getIt.registerLazySingleton<NotificationsRepository>(() => NotificationsRepository(getIt()));
  getIt.registerFactory<NotificationsCubit>(() => NotificationsCubit(getIt()));

  getIt.registerLazySingleton<ReportRepository>(() => ReportRepository(getIt()));
  getIt.registerFactory<ReportCubit>(() => ReportCubit(getIt()));

  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

}