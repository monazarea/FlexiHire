import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/follow/data/models/toggle_follow_request_body.dart';
import 'package:grad_comp/features/follow/data/models/toggle_follow_response.dart';

class FollowRepository {
  final ApiService _apiService;
  FollowRepository(this._apiService);

  Future<ApiResult<ToggleFollowResponse>> toggleFollow(int companyId) async {
    try {
      final requestBody = ToggleFollowRequestBody(companyId: companyId);
      final response = await _apiService.toggleFollow(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}