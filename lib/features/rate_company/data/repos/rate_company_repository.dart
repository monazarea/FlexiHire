import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/rate_company/data/models/rate_company_request_body.dart';
import 'package:grad_comp/features/rate_company/data/models/rate_company_response.dart';

class RateCompanyRepository {
  final ApiService _apiService;
  RateCompanyRepository(this._apiService);

  Future<ApiResult<RateCompanyResponse>> createReview(
      RateCompanyRequestBody requestBody) async {
    try {
      final response = await _apiService.createReview(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
} 