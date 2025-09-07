import 'dart:io';

import 'package:dio/dio.dart';
import 'package:grad_comp/features/auth/forget_password/data/models/forget_password_request_body.dart';
import 'package:grad_comp/features/auth/forget_password/data/models/forget_password_response_body.dart';

import 'package:retrofit/retrofit.dart';
import '../../features/apply_for_job/data/model/apply_job_request_body.dart';
import '../../features/apply_for_job/data/model/apply_job_response.dart';
import '../../features/auth/login/data/models/login_request_body.dart';
import '../../features/auth/login/data/models/login_response_body.dart';


import '../../features/auth/logout/data/models/logout_response.dart';
import '../../features/auth/reset_password/data/models/reset_password_request_body.dart';
import '../../features/auth/reset_password/data/models/reset_password_response_body.dart';
import '../../features/auth/sign_up/data/models/sign_up_request_body.dart';
import '../../features/auth/sign_up/data/models/sign_up_response_body.dart';
import '../../features/change_password/data/models/change_password_request_body.dart';
import '../../features/change_password/data/models/change_password_response.dart';
import '../../features/companies/data/models/all_companies_response.dart';
import '../../features/dashboard/data/models/applicants/job_proposals_response.dart';
import '../../features/dashboard/data/models/applicants/update_status/update_status_request_body.dart';
import '../../features/dashboard/data/models/applicants/update_status/update_status_response.dart';
import '../../features/dashboard/data/models/dashboard_screen/my_jobs_response.dart';
import '../../features/dashboard/data/models/delete_job/delete_job_response.dart';
import '../../features/dashboard/data/models/manage_job/job_post_response.dart';
import '../../features/dashboard/data/models/manage_job/job_request_body.dart';
import '../../features/edit_profile/data/models/update_description/update_description_request_body.dart';
import '../../features/edit_profile/data/models/update_description/update_description_response_body.dart';
import '../../features/edit_profile/data/models/update_email/update_email_request_body.dart';
import '../../features/edit_profile/data/models/update_email/update_email_response.dart';
import '../../features/edit_profile/data/models/update_image/update_image_response.dart';
import '../../features/edit_profile/data/models/update_location/update_location_request_body.dart';
import '../../features/edit_profile/data/models/update_location/update_location_response.dart';
import '../../features/edit_profile/data/models/update_name/update_name_request_body.dart';
import '../../features/edit_profile/data/models/update_name/update_name_response_body.dart';
import '../../features/edit_profile/data/models/update_skills_jobs/update_skills_jobs_request_body.dart';
import '../../features/edit_profile/data/models/update_skills_jobs/update_skills_jobs_response.dart';
import '../../features/follow/data/models/toggle_follow_request_body.dart';
import '../../features/follow/data/models/toggle_follow_response.dart';
import '../../features/get_skills_and_jobs/data/models/skills_jobs_response.dart';
import '../../features/home/data/models/companies/top_companies_response.dart';
import '../../features/home/data/models/jobs/jobs_list_response.dart';
import '../../features/home/data/models/recommended_jobs/recommended_jobs_response.dart';
import '../../features/job_details/data/models/job_details_response.dart';
import '../../features/job_seekers/data/models/all_job_seekers_response.dart';
import '../../features/notifcation/data/models/action_status_response.dart';
import '../../features/notifcation/data/models/get_notification/notification_response.dart';
import '../../features/profiles/company/data/models/company_profile_response.dart';
import '../../features/profiles/company/data/models/followers_tab_models/company_followers_response.dart';
import '../../features/profiles/job_seeker/data/models/applied_tab_models/applied_jobs_response.dart';
import '../../features/profiles/job_seeker/data/models/followed_companies_tab_models/followed_companies_response.dart';
import '../../features/profiles/job_seeker/data/models/profile_tab_models/job_seeker_profile_response_model.dart';
import '../../features/profiles/job_seeker/data/models/reviews_tab_models/delete_review_response.dart';
import '../../features/profiles/job_seeker/data/models/reviews_tab_models/my_reviews_response.dart';
import '../../features/rate_company/data/models/rate_company_request_body.dart';
import '../../features/rate_company/data/models/rate_company_response.dart';
import '../../features/report/data/models/report_response_body.dart';
import '../../features/save_job/data/models/save_job_request_body.dart';
import '../../features/save_job/data/models/save_job_response.dart';
import '../../features/saved_jobs/data/models/saved_jobs_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl:ApiConstants.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl})=_ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody>login(
      @Body()LoginRequestBody loginRequestBody,
      );

  @POST(ApiConstants.signup)
  Future<SignUpResponseBody>signup(
      @Body()SignUpRequestBody signupRequestBody,
      );

  @POST(ApiConstants.forgetPassword)
  Future<ForgetPasswordResponseBody>forgetPassword(
      @Body()ForgetPasswordRequestBody forgetPasswordRequestBody,
      );

  @GET(ApiConstants.topCompanies)
  Future<TopCompaniesResponse> getTopCompanies();

  @GET(ApiConstants.jobSeekerProfile)
  Future<JobSeekerProfileResponseModel> getJobSeekerProfile(@Path("id") String jobSeekerId);

  @GET(ApiConstants.companyProfile)
  Future<CompanyProfileResponse> getCompanyProfile(@Path("id") String companyId);

  @POST(ApiConstants.updateProfileName)
  Future<UpdateNameResponseBody> updateUserName(
      @Body() UpdateNameRequestBody updateNameRequestBody,
      );

  @POST(ApiConstants.updateProfileDescription)
  Future<UpdateDescriptionResponseBody> updateProfileDescription( // <--- أضف هذه الـ Method
      @Body() UpdateDescriptionRequestBody updateDescriptionRequestBody,
      );

  @GET(ApiConstants.jobs)
  Future<JobsListResponse> getAllJobs({
    @Query("page") int? page,
    @Query("per_page") int? perPage,
    @Query("search") String? search,
    @Query("searchLocation") String? searchLocation,
    @Query("skills[]") List<String>? skills,
    @Query("minSalary") int? minSalary,
    @Query("maxSalary") int? maxSalary,
  });

  @GET(ApiConstants.companies)
  Future<AllCompaniesResponse> getAllCompanies({
    @Query("page") required int page,
    @Query("per_page") int perPage = 15,
    @Query("search") String? search,
    @Query('searchLocation')String? searchLocation,
  });

  @GET(ApiConstants.users)
  Future<AllJobSeekersResponse> getAllJobSeekers({
    @Query("page") required int page,
    @Query("per_page") int perPage = 15,
    @Query("search") String? search,
    @Query("jobSearch") String? jobSearch,
  });

  @GET(ApiConstants.recommendedJobs)
  Future<RecommendedJobsResponse> getRecommendedJobs();

  @GET(ApiConstants.jobDetails)
  Future<JobDetailsResponse> getJobDetails(@Path("id") String jobId);

  @POST(ApiConstants.applyForJob)
  Future<ApplyJobResponse> applyForJob(@Body() ApplyJobRequestBody requestBody);

  @GET(ApiConstants.myApplies)
  Future<AppliedJobsResponse> getAppliedJobs();

  @POST(ApiConstants.toggleSaveJob)
  Future<SaveJobResponse> toggleSaveJob(@Body() SaveJobRequestBody requestBody);

  @GET(ApiConstants.myReviews)
  Future<MyReviewsResponse> getMyReviews({@Query("page") int? page});

  @POST(ApiConstants.deleteReview) // غيرناها من @DELETE إلى @POST
  Future<DeleteReviewResponse> deleteReview(@Path("id") int reviewId);

  @GET(ApiConstants.userFollowing)
  Future<FollowedCompaniesResponse> getFollowedCompanies(
      @Path("id") String userId, {
        @Query("page") int? page
      });

  @POST(ApiConstants.toggleFollow)
  Future<ToggleFollowResponse> toggleFollow(@Body() ToggleFollowRequestBody requestBody);

  @GET(ApiConstants.companyFollowers)
  Future<CompanyFollowersResponse> getCompanyFollowers(
      @Path("id") String companyId, {
        @Query("page") int? page,
      });

  @POST(ApiConstants.createReview)
  Future<RateCompanyResponse> createReview(@Body() RateCompanyRequestBody requestBody);

  @GET(ApiConstants.dashboardMyJobs)
  Future<MyJobsResponse> getMyJobs({@Query("page") int? page});

  @POST(ApiConstants.deleteJob)
  Future<DeleteJobResponse> deleteJob(@Path("id") int jobId);

  @POST(ApiConstants.createJob)
  Future<JobPostResponse> createJob(@Body() JobRequestBody requestBody);

  @POST(ApiConstants.updateJob) // الـ API يتوقع POST للتعديل
  Future<JobPostResponse> updateJob(
      @Path("id") int jobId,
      @Body() JobRequestBody requestBody,
      );

  @GET(ApiConstants.getSkillsAndJobs) // افترض أن هذا هو اسم الثابت في ApiConstants
  Future<SkillsJobsResponse> getSkillsAndJobs();

  @GET(ApiConstants.getJobProposals) // <-- تم استخدام الثابت هنا
  Future<JobProposalsResponse> getJobProposals(
      @Path("id") int jobId,
      @Query("page") int page,
      );

  @GET(ApiConstants.rankJobProposals)
  Future<JobProposalsResponse> rankJobProposals(@Path("id") int jobId);

  @POST(ApiConstants.updateApplicationStatus)
  Future<UpdateStatusResponse> updateApplicationStatus(
      @Path("id") int proposalId,
      @Body() UpdateStatusRequestBody body,
      );

  @GET(ApiConstants.getSavedJobs)
  Future<SavedJobsResponse> getSavedJobs(@Query("page") int page);



  @POST(ApiConstants.updatePassword)
  Future<ChangePasswordResponse> changePassword(
      @Body() ChangePasswordRequestBody body,
      );

  @POST(ApiConstants.updateProfileImage)
  @MultiPart()
  Future<UpdateImageResponse> updateProfileImage(
      @Part(name: 'image') File image,
      );

// ٢. تعديل دالة صورة الخلفية (هنا كانت المشكلة)
  @POST(ApiConstants.updateBackgroundImage)
  @MultiPart()
  Future<UpdateImageResponse> updateBackgroundImage(
      // نحدد الاسم الذي يريده السيرفر
      @Part(name: 'background_image') File image,
      );

  @GET(ApiConstants.notifications)
  Future<NotificationApiResponse> getNotifications();

  @POST(ApiConstants.markAsRead)
  Future<ActionStatusResponse> markAsRead(@Path("id") String notificationId);

  @POST(ApiConstants.deleteNotification)
  Future<ActionStatusResponse> deleteNotification(@Path("id") String notificationId);

  @POST(ApiConstants.markAllAsRead)
  Future<ActionStatusResponse> markAllAsRead();

  @POST(ApiConstants.deleteAllNotifications)
  Future<ActionStatusResponse> deleteAllNotifications();

  @POST(ApiConstants.updateEmail)
  Future<UpdateEmailResponse> updateEmail(
      @Body() UpdateEmailRequestBody updateEmailRequestBody,
      );

  @POST(ApiConstants.updateLocation)
  Future<UpdateLocationResponse> updateLocation(
      @Body() UpdateLocationRequestBody updateLocationRequestBody,
      );

  @POST(ApiConstants.updateSkillsAndJob) // <-- تم وضع الرابط الصحيح هنا مباشرة
  Future<UpdateSkillsJobsResponse> updateSkillsAndJob(
      @Body() UpdateSkillsJobsRequestBody updateSkillsJobsRequestBody,
      );

  @POST(ApiConstants.updateCv)
  @MultiPart() // نحدد أن هذا الطلب سيرسل ملفات
  Future<UpdateImageResponse> updateCv(
      @Part(name: "cv") File cvFile, // نرسل الملف كـ Part باسم "cv"
      );

  @POST(ApiConstants.createReport)
  @MultiPart() // نحدد أن هذا الطلب سيرسل ملفات
  Future<ReportResponseBody> createReport(
      @Part(name: "reported_user_id") int reportedUserId,
      @Part(name: "reason") String reason,
      // نرسل قائمة الصور
      @Part(name: "images[]") List<File> images,
      );
  
  @POST(ApiConstants.resetPassword)
  Future<ResetPasswordResponseBody> resetPassword(
      @Body() ResetPasswordRequestBody resetPasswordRequestBody,
      );

  @POST(ApiConstants.logout)
  Future<LogoutResponse> logout();

}