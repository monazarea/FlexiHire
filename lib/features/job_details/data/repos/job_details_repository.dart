// lib/features/job_details/data/repos/job_details_repository.dart

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/job_details/data/models/job_details_response.dart';

class JobDetailsRepository {
  final ApiService _apiService;

  JobDetailsRepository(this._apiService);

  Future<ApiResult<JobDetailsResponse>> getJobDetails(String jobId) async {
    try {
      final response = await _apiService.getJobDetails(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}