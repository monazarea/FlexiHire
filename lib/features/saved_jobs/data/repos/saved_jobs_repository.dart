import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../models/saved_jobs_response.dart';

class SavedJobsRepository {
  final ApiService _apiService;

  SavedJobsRepository(this._apiService);

  Future<ApiResult<SavedJobsResponse>> getSavedJobs({required int page}) async {
    try {
      final response = await _apiService.getSavedJobs(page);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

// ... (دالة toggleSaveJob السابقة تظل هنا إذا كانت في نفس الملف)
}