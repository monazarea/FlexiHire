import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../models/applicants/job_proposals_response.dart';
import '../models/applicants/update_status/update_status_request_body.dart';
import '../models/applicants/update_status/update_status_response.dart';

class UpdateApplicationStatusRepository {
  final ApiService _apiService;

  UpdateApplicationStatusRepository(this._apiService);

  Future<ApiResult<UpdateStatusResponse>> updateStatus({
    required int proposalId,
    required String status,
  }) async {
    try {
      final response = await _apiService.updateApplicationStatus(
        proposalId,
        UpdateStatusRequestBody(status: status),
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}