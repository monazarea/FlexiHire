import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import '../../../../core/networking/api_error_handler.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<List<CompanyModel>>> getTopCompanies() async {
    try {
      final response = await _apiService.getTopCompanies();
      return ApiResult.success(response.data ?? []);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<JobModel>>> getRecentJobs() async {
    try {
      final response = await _apiService.getAllJobs(
        page: 1,
        perPage: 10,
      );
      final jobsList = response.data?.jobs ?? [];
      return ApiResult.success(jobsList);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<JobModel>>> getRecommendedJobs() async {
    try {
      final response = await _apiService.getRecommendedJobs();
      return ApiResult.success(response.data ?? []);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}