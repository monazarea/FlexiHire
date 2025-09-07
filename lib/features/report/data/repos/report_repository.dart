// lib/features/report/data/repos/report_repository.dart

import 'dart:io';
import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import '../models/report_response_body.dart';

class ReportRepository {
  final ApiService _apiService;

  ReportRepository(this._apiService);

  Future<ApiResult<ReportResponseBody>> createReport({
    required int reportedUserId,
    required String reason,
    required List<File> images,
  }) async {
    try {
      final response = await _apiService.createReport(reportedUserId, reason, images);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}