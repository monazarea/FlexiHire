

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../../../reset_password/data/models/reset_password_request_body.dart';
import '../../../reset_password/data/models/reset_password_response_body.dart';
import '../models/forget_password_request_body.dart';
import '../models/forget_password_response_body.dart';

class ForgetPasswordRepo {
  final ApiService _apiService;
  ForgetPasswordRepo(this._apiService);

  Future<ApiResult<ForgetPasswordResponseBody>> forgetPassword(
      ForgetPasswordRequestBody forgetPasswordRequestBody) async {
    try {
      final response = await _apiService.forgetPassword(forgetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ResetPasswordResponseBody>> resetPassword(
      ResetPasswordRequestBody resetPasswordRequestBody) async {
    try {
      final response = await _apiService.resetPassword(resetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

