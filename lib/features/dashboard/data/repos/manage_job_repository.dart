// import 'package:grad_comp/core/networking/api_error_handler.dart';
// import 'package:grad_comp/core/networking/api_result.dart';
// import 'package:grad_comp/core/networking/api_service.dart';
// import 'package:grad_comp/features/dashboard/data/models/create_job/job_request_body.dart';
// import 'package:grad_comp/features/dashboard/data/models/create_job/job_post_response.dart';
//
// class CreateJobRepository {
//   final ApiService _apiService;
//   CreateJobRepository(this._apiService);
//
//   Future<ApiResult<CreateJobResponse>> createJob(
//       CreateJobRequestBody requestBody) async {
//     try {
//       final response = await _apiService.createJob(requestBody);
//       return ApiResult.success(response);
//     } catch (error) {
//       return ApiResult.failure(ApiErrorHandler.handle(error));
//     }
//   }
//
//   Future<ApiResult<CreateJobResponse>> updateJob({
//     required int jobId,
//     required CreateJobRequestBody requestBody,
//   }) async {
//     try {
//       final response = await _apiService.updateJob(jobId, requestBody);
//       return ApiResult.success(response);
//     } catch (error) {
//       return ApiResult.failure(ApiErrorHandler.handle(error));
//     }
//   }
//
// }

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';

import '../models/manage_job/job_post_response.dart';
import '../models/manage_job/job_request_body.dart';

class ManageJobRepository {
  final ApiService _apiService;
  ManageJobRepository(this._apiService);

  // دالة الإنشاء
  Future<ApiResult<JobPostResponse>> createJob(
      JobRequestBody requestBody) async {
    try {
      final response = await _apiService.createJob(requestBody);
      return ApiResult.success(response);
    } catch (error,stackTrace) {
      print('<<<<<<<<<<<<<<<< ERROR CAUGHT >>>>>>>>>>>>>>>>');
      print('Error Type: ${error.runtimeType}');
      print('Error Message: $error');
      print('Stack Trace: $stackTrace');
      print('<<<<<<<<<<<<<<<<================>>>>>>>>>>>>>>');

      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  // دالة التعديل
  Future<ApiResult<JobPostResponse>> updateJob(
      int jobId, JobRequestBody requestBody) async {
    try {
      final response = await _apiService.updateJob(jobId, requestBody);
      return ApiResult.success(response);
    } catch (error,stackTrace) {
      print('<<<<<<<<<<<<<<<< ERROR CAUGHT >>>>>>>>>>>>>>>>');
      print('Error Type: ${error.runtimeType}');
      print('Error Message: $error');
      print('Stack Trace: $stackTrace');
      print('<<<<<<<<<<<<<<<<================>>>>>>>>>>>>>>');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}