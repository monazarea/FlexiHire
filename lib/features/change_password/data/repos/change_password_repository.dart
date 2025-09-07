import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../models/change_password_request_body.dart';
import '../models/change_password_response.dart';

class ChangePasswordRepository {
  final ApiService _apiService;

  ChangePasswordRepository(this._apiService);

  Future<ApiResult<ChangePasswordResponse>> changePassword(
      ChangePasswordRequestBody requestBody) async {
    try {
      final response = await _apiService.changePassword(requestBody);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ApiErrorHandler.handle(response.message));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}