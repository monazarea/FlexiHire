import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'package:grad_comp/features/job_seekers/data/models/job_seeker_list_item_model.dart';

class SearchRepository {
  final ApiService _apiService;

  SearchRepository(this._apiService);

  Future<ApiResult<List<JobModel>>> searchJobs({
    required int page,
    String? keyword,
    String? location,
    List<String>? skills,
    int? minSalary,
    int? maxSalary,
  }) async {
    try {
      final response = await _apiService.getAllJobs(
        page: page,
        perPage: 15,
        search: keyword,
        searchLocation: location,
        skills: skills,
        minSalary: minSalary,
        maxSalary: maxSalary,
      );
      return ApiResult.success(response.data?.jobs ?? []);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<CompanyModel>>> searchCompanies({
    required int page,
    String? keyword,
    String? location,
  }) async {
    try {
      final response = await _apiService.getAllCompanies(
        page: page,
        perPage: 15,
        search: keyword,
      );
      return ApiResult.success(response.paginationData?.companies ?? []);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<JobSeekerListItemModel>>> searchUsers({
    required int page,
    String? keyword,
    String? jobTitle,
  }) async {
    try {
      final response = await _apiService.getAllJobSeekers(
        page: page,
        perPage: 15,
        search: keyword,
        jobSearch: jobTitle,
      );
      return ApiResult.success(response.paginationData?.jobSeekers ?? []);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
