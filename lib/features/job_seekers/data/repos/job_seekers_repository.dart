import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/job_seekers/data/models/all_job_seekers_response.dart';

import '../../../../core/networking/api_error_model.dart';

class JobSeekersRepository {
  final ApiService _apiService;

  JobSeekersRepository(this._apiService);

  Future<ApiResult<JobSeekersPaginationData>> getJobSeekers({
    required int page,
  }) async {
    try {
      final response = await _apiService.getAllJobSeekers(
        page: page,
      );

      if (response.paginationData != null) {
        return ApiResult.success(response.paginationData!);
      } else {
        return ApiResult.failure(
            ApiErrorModel(message: "No pagination data found"));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}