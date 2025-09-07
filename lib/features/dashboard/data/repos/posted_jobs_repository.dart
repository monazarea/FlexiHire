import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../models/dashboard_screen/my_jobs_response.dart';
// تأكدي من أن هذا المسار صحيح بعد تغيير اسم الملف

class PostedJobsRepository {
  final ApiService _apiService;
  PostedJobsRepository(this._apiService);

  Future<ApiResult<MyJobsPaginationData>> getPostedJobs({required int page}) async {
    try {
      // نستدعي الدالة من ApiService
      final response = await _apiService.getMyJobs(page: page);
      if (response.paginationData != null) {
        return ApiResult.success(response.paginationData!);
      } else {
        return ApiResult.failure(ApiErrorModel(message: "No data found"));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}