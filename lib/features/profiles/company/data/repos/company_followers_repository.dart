import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../models/followers_tab_models/company_followers_response.dart';

class CompanyFollowersRepository {
  final ApiService _apiService;
  CompanyFollowersRepository(this._apiService);

  Future<ApiResult<FollowersPaginationData>> getCompanyFollowers({
    required String companyId,
    required int page,
  }) async {
    try {
      final response = await _apiService.getCompanyFollowers(companyId, page: page);
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