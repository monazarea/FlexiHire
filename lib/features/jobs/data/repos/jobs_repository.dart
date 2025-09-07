import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_pagination_data.dart';

import '../../../../core/networking/api_error_model.dart';

class JobsRepository {
  final ApiService _apiService;

  JobsRepository(this._apiService);

  Future<ApiResult<JobPaginationData>> getJobs({required int page}) async {
    try {
      final response = await _apiService.getAllJobs(
        page: page,
        perPage: 15,
      );
      if (response.data != null) {
        return ApiResult.success(response.data!);
      } else {
        return ApiResult.failure(ApiErrorModel(message: "No pagination data found"));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
