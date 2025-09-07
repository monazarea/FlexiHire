// lib/features/profiles/job_seeker/data/repos/reviews_tab_repo/reviews_repository.dart

import 'package:grad_comp/core/networking/api_error_handler.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/core/networking/api_service.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/my_reviews_response.dart';

class ReviewsRepository {
  final ApiService _apiService;

  ReviewsRepository(this._apiService);

  Future<ApiResult<ReviewsPaginationData>> getMyReviews({required int page}) async {
    try {
      final response = await _apiService.getMyReviews(page: page);
      if (response.paginationData != null) {
        return ApiResult.success(response.paginationData!);
      } else {
        return ApiResult.failure(ApiErrorModel(message: "No data found"));
      }
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<void>> deleteReview(int reviewId) async {
    try {
      await _apiService.deleteReview(reviewId);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}