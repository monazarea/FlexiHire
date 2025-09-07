

import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';

import '../models/sign_up_request_body.dart';
import '../models/sign_up_response_body.dart';


class SignUpRepo{
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponseBody>> signUp(
      SignUpRequestBody signupRequestBody)async{
    try{
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch(error){
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}