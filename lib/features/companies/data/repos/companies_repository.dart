import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/companies/data/models/all_companies_response.dart';

import '../../../../core/networking/api_error_model.dart';

class CompaniesRepository {
  final ApiService _apiService;

  CompaniesRepository(this._apiService);

  Future<ApiResult<CompaniesPaginationData>> getCompanies({required int page}) async {
    try {
      final response = await _apiService.getAllCompanies(
        page: page,
      );

      if (response.paginationData != null) {
        return ApiResult.success(response.paginationData!);
      } else {
        return ApiResult.failure(
            ApiErrorModel(message: "No pagination data found"));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
