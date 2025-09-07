class ApiConstants{

  static const String apiBaseUrl="https://c.jordanwebmaster.com/flexihire/public/api/";
  static const String login = 'login';
  static const String signup= 'register';
  static const String forgetPassword= 'forgot-password';
  static const String topCompanies = "top-companies";
  static const String jobSeekerProfile = "user/{id}";
  static const String companyProfile= 'auth-company/{id}';
  static const String updateProfileName="profile/update-name";
  static const String updateProfileDescription = "profile/update-profile-description";
  static const String jobs = "auth-jobs";
  static const String recommendedJobs = "ai/recommended-jobs";
  static const String companies = "auth-companies";
  static const String users = "users";
  static const String jobDetails = "company/auth-get-job/{id}";
  static const String applyForJob = "dashboard/company/apply-for-job";
  static const String logout = "logout";
  static const String myApplies = "dashboard/user/my-applies/";
  static const String toggleSaveJob = "profile/saved-job/toggle-saved-job";
  static const String myReviews = "reviews/my-reviews";
  static const String deleteReview = "reviews/delete/{id}";
  static const String userFollowing = "user/{id}/following";
  static const String toggleFollow = "follow/toggle-follow";
  static const String companyFollowers = "company/{id}/followers";
  static const String createReview = "reviews/create";
  static const String dashboardMyJobs = "dashboard/company/my-jobs";
  static const String deleteJob = "company/delete-job/{id}";
  static const String createJob = "company/create-job";
  static const String updateJob = "company/update-job/{id}";
  static const String getSkillsAndJobs = "get-skills-jobs";
  static const String getJobProposals = "dashboard/company/my-job-proposals/{id}";
  static const String rankJobProposals = "dashboard/company/rank-job-proposals/{id}";
  static const String updateApplicationStatus = "dashboard/company/update-application-status/{id}";
  static const String getSavedJobs = "profile/saved-job/saved-jobs";
  static const String updatePassword = "profile/update-password";
  static const String updateProfileImage = "profile/update-profile-image";
  static const String updateBackgroundImage = "profile/update-profile-background-image";
  static const String notifications = "/notifications/";
  static const String markAsRead = "/notifications/mark-as-read/{id}";
  static const String deleteNotification = "/notifications/delete/{id}";
  static const String markAllAsRead = "/notifications/mark-all-as-read";
  static const String deleteAllNotifications = "/notifications/delete-all";
  static const String updateEmail = "/profile/update-email";
  static const String updateLocation = "/profile/update-profile-location";
  static const String updateSkillsAndJob = "/profile/update-skills-job";
  static const String updateCv = "/profile/update-profile-cv";
  static const String createReport = "/reports/create";
  static const String resetPassword = "/reset-password";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";

}