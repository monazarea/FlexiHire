import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/dashboard/data/models/delete_job/delete_job_response.dart';

class DeleteJobRepository {
  final ApiService _apiService;
  DeleteJobRepository(this._apiService);

  Future<ApiResult<void>> deleteJob(int jobId) async {
    try {
      await _apiService.deleteJob(jobId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}