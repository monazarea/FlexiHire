// lib/features/apply_for_job/data/repos/apply_for_job_repository.dart

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../model/apply_job_request_body.dart';
import '../model/apply_job_response.dart';
class ApplyForJobRepository {
  final ApiService _apiService;

  ApplyForJobRepository(this._apiService);

  Future<ApiResult<ApplyJobResponse>> applyForJob(
      ApplyJobRequestBody requestBody) async {
    try {
      final response = await _apiService.applyForJob(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}