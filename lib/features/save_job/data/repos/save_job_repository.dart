import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/save_job/data/models/save_job_request_body.dart';
import 'package:grad_comp/features/save_job/data/models/save_job_response.dart';

class SaveJobRepository {
  final ApiService _apiService;
  SaveJobRepository(this._apiService);

  Future<ApiResult<SaveJobResponse>> toggleSaveJob(int jobId) async {
    try {
      final requestBody = SaveJobRequestBody(jobId: jobId);
      final response = await _apiService.toggleSaveJob(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}


