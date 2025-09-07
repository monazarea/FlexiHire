import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../models/applicants/job_proposals_response.dart';

class JobApplicantsRepository {
  final ApiService _apiService;

  JobApplicantsRepository(this._apiService);

  Future<ApiResult<JobProposalsResponse>> getJobApplicants({
    required int jobId,
    required int page,
  }) async {
    try {
      final response = await _apiService.getJobProposals(jobId, page);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<JobProposalsResponse>> rankJobApplicants({required int jobId}) async {
    try {
      final response = await _apiService.rankJobProposals(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}