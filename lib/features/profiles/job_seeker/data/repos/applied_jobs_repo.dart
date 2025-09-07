// lib/features/profiles/job_seeker/data/repos/applied_jobs_repo/applied_jobs_repository.dart

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_jobs_response.dart';

class AppliedJobsRepository {
  final ApiService _apiService;

  AppliedJobsRepository(this._apiService);

  Future<ApiResult<AppliedJobsResponse>> getAppliedJobs() async {
    try {
      final response = await _apiService.getAppliedJobs();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}