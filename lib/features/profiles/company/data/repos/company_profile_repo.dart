import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../models/company_profile_response.dart';

class CompanyProfileRepository {
  final ApiService _apiService;
  CompanyProfileRepository(this._apiService);

  /// يجلب بيانات بروفايل الشركة من الـ API
  Future<ApiResult<CompanyProfileResponse>> getCompanyProfile(String companyId) async {
    try {
      final response = await _apiService.getCompanyProfile(companyId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}