// lib/features/profiles/job_seeker/data/repos/company_profile_repo.dart

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../models/profile_tab_models/job_seeker_profile_response_model.dart';



class JobSeekerProfileRepo {
  final ApiService _apiService;

  JobSeekerProfileRepo(this._apiService);

  Future<ApiResult<JobSeekerProfileResponseModel>> getJobSeekerProfile(String jobSeekerId) async {
    try {
      final response = await _apiService.getJobSeekerProfile(jobSeekerId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}