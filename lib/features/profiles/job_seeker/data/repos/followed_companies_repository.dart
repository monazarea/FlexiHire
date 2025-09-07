import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/followed_companies_tab_models/followed_companies_response.dart';

class FollowedCompaniesRepository {
  final ApiService _apiService;
  FollowedCompaniesRepository(this._apiService);

  // --- تم حذف userId من هنا ---
  Future<ApiResult<FollowedCompaniesPaginationData>> getFollowedCompanies({required String userId,required int page}) async {
    try {
      // الدالة الآن تستدعى بدون userId
      final response = await _apiService.getFollowedCompanies(userId,page: page);
      if (response.paginationData != null) {
        return ApiResult.success(response.paginationData!);
      } else {
        return ApiResult.failure( ApiErrorModel(message: "No data found"));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}