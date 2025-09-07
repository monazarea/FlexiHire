import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/networking/dio_factory.dart';

class LogoutRepository {
  final ApiService _apiService;
  LogoutRepository(this._apiService);

  Future<ApiResult<void>> logout() async {
    try {
      await _apiService.logout();
      await _clearUserData();
      return const ApiResult.success(null);
    } catch (error) {
      await _clearUserData();
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<void> _clearUserData() async {
    await SharedPrefHelper.clearAllData();

    await SharedPrefHelper.clearAllSecuredData();

    DioFactory.clearTokenFromHeader();
  }
}