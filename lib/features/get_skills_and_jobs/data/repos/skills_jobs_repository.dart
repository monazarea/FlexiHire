import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../models/skills_jobs_response.dart';

// تم تغيير الاسم ليعكس المحتوى
class SkillsJobsRepository {
  final ApiService _apiService;

  SkillsJobsRepository(this._apiService);

  Future<ApiResult<SkillsJobsResponse>> getSkillsAndJobs() async {
    try {
      final response = await _apiService.getSkillsAndJobs();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}