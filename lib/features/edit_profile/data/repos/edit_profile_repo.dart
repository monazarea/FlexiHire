// lib/features/edit_profile/data/repos/edit_profile_repo.dart

import 'dart:io';

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../models/update_description/update_description_request_body.dart';
import '../models/update_description/update_description_response_body.dart';
import '../models/update_email/update_email_request_body.dart';
import '../models/update_email/update_email_response.dart';
import '../models/update_image/update_image_response.dart';
import '../models/update_location/update_location_request_body.dart';
import '../models/update_location/update_location_response.dart';
import '../models/update_name/update_name_request_body.dart';
import '../models/update_name/update_name_response_body.dart';
import '../models/update_skills_jobs/update_skills_jobs_request_body.dart';
import '../models/update_skills_jobs/update_skills_jobs_response.dart';

class EditProfileRepo {
  final ApiService _apiService;

  EditProfileRepo(this._apiService);

  Future<ApiResult<UpdateNameResponseBody>> updateUserName(
      UpdateNameRequestBody updateNameRequestBody) async {
    try {
      final response = await _apiService.updateUserName(updateNameRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateDescriptionResponseBody>> updateProfileDescription( // <--- أضف هذه الـ Method
      UpdateDescriptionRequestBody updateDescriptionRequestBody) async {
    try {
      final response = await _apiService.updateProfileDescription(updateDescriptionRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateImageResponse>> updateProfileImage(File image) async {
    try {
      final response = await _apiService.updateProfileImage(image);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ApiErrorHandler.handle(response.message));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  // دالة تحديث صورة الخلفية
  Future<ApiResult<UpdateImageResponse>> updateBackgroundImage(File image) async {
    try {
      final response = await _apiService.updateBackgroundImage(image);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ApiErrorHandler.handle(response.message));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateEmailResponse>> updateEmail(
      UpdateEmailRequestBody updateEmailRequestBody) async {
    try {
      final response = await _apiService.updateEmail(updateEmailRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateLocationResponse>> updateLocation(
      UpdateLocationRequestBody updateLocationRequestBody) async {
    try {
      final response = await _apiService.updateLocation(updateLocationRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateSkillsJobsResponse>> updateSkillsAndJob(
      UpdateSkillsJobsRequestBody updateSkillsJobsRequestBody) async {
    try {
      final response = await _apiService.updateSkillsAndJob(updateSkillsJobsRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdateImageResponse>> updateCv(File cvFile) async {
    try {
      final response = await _apiService.updateCv(cvFile);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }


}