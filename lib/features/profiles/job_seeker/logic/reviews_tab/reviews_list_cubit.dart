// import 'dart:async';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/networking/api_result.dart';
// import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';
// import 'package:grad_comp/features/rate_company/logic/review_update_service.dart';
// import '../../data/repos/reviews_repository.dart';
// import 'reviews_list_state.dart';
//
// class ReviewsListCubit extends Cubit<ReviewsListState> {
//   final ReviewsRepository _reviewsRepository;
//   late final StreamSubscription _reviewSubscription;
//   int _currentPage = 1;
//
//   ReviewsListCubit(this._reviewsRepository)
//       : super(const ReviewsListState.initial()) {
//     // عند إنشاء الكيوبت، نبدأ في الاستماع لأي تقييمات جديدة
//     _reviewSubscription = ReviewUpdateService().stream.listen((newReview) {
//       _addNewReviewToList(newReview);
//     });
//   }
//
//   @override
//   Future<void> close() {
//     _reviewSubscription.cancel();
//     return super.close();
//   }
//
//   // --- دالة لإضافة التقييم الجديد للقائمة ---
//   void _addNewReviewToList(ReviewModel newReview) {
//     if (state is! ReviewsListSuccess) return;
//     final currentState = state as ReviewsListSuccess;
//
//     // نقوم بإنشاء قائمة جديدة مع إضافة التقييم الجديد في الأعلى
//     final updatedList = [newReview, ...currentState.reviews];
//
//     emit(currentState.copyWith(reviews: updatedList));
//   }
//
//   // --- دالة جلب البيانات الأولية ---
//   void fetchInitialReviews() async {
//     if (state is ReviewsListLoading) return;
//
//     emit(const ReviewsListState.loading());
//     final result = await _reviewsRepository.getMyReviews(page: 1);
//
//     switch (result) {
//       case Success(data: final paginationData):
//         final reviewsList = paginationData.reviews ?? [];
//         final hasReachedMax = paginationData.currentPage == paginationData.lastPage || reviewsList.isEmpty;
//         _currentPage = 1;
//         emit(ReviewsListState.success(reviews: reviewsList, hasReachedMax: hasReachedMax));
//         break;
//       case Failure(:final apiErrorModel):
//         emit(ReviewsListState.error(apiErrorModel));
//         break;
//     }
//   }
//
//   // --- دالة تحميل المزيد من البيانات ---
//   void loadMoreReviews() async {
//     if (state is! ReviewsListSuccess) return;
//
//     final currentState = state as ReviewsListSuccess;
//     if (currentState.isLoadingMore || currentState.hasReachedMax) return;
//
//     emit(currentState.copyWith(isLoadingMore: true));
//
//     _currentPage++;
//     final result = await _reviewsRepository.getMyReviews(page: _currentPage);
//
//     switch (result) {
//       case Success(data: final paginationData):
//         final newReviews = paginationData.reviews ?? [];
//         final hasReachedMax = paginationData.currentPage == paginationData.lastPage || newReviews.isEmpty;
//         emit(currentState.copyWith(
//           reviews: List.of(currentState.reviews)..addAll(newReviews),
//           isLoadingMore: false,
//           hasReachedMax: hasReachedMax,
//         ));
//         break;
//       case Failure(:final apiErrorModel):
//         emit(currentState.copyWith(isLoadingMore: false));
//         break;
//     }
//   }
//
//   // --- دالة حذف التقييم ---
//   void deleteReview(int reviewId) async {
//     if (state is! ReviewsListSuccess) return;
//
//     final currentState = state as ReviewsListSuccess;
//
//     final originalReviews = List<ReviewModel>.from(currentState.reviews);
//
//     final updatedList = List<ReviewModel>.from(currentState.reviews)
//       ..removeWhere((review) => review.id == reviewId);
//
//     emit(currentState.copyWith(reviews: updatedList));
//
//     final result = await _reviewsRepository.deleteReview(reviewId);
//
//     if (result is Failure) {
//       emit(currentState.copyWith(reviews: originalReviews));
//     }
//   }
// }


import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';
import 'package:grad_comp/features/rate_company/logic/review_update_service.dart';
import '../../data/repos/reviews_repository.dart';
import 'reviews_list_state.dart';

class ReviewsListCubit extends Cubit<ReviewsListState> {
  final ReviewsRepository _reviewsRepository;
  late final StreamSubscription _reviewSubscription;
  int _currentPage = 1;

  ReviewsListCubit(this._reviewsRepository)
      : super(const ReviewsListState.initial()) {
    // عند إنشاء الكيوبت، نبدأ في الاستماع لأي تقييمات جديدة
    _reviewSubscription = ReviewUpdateService().stream.listen((newReview) {
      _addNewReviewToList(newReview);
    });
  }

  @override
  Future<void> close() {
    _reviewSubscription.cancel();
    return super.close();
  }

  // --- دالة جديدة لإضافة التقييم الجديد للقائمة ---
  void _addNewReviewToList(ReviewModel newReview) {
    if (state is! ReviewsListSuccess) return;
    final currentState = state as ReviewsListSuccess;

    // نقوم بإنشاء قائمة جديدة مع إضافة التقييم الجديد في الأعلى
    final updatedList = [newReview, ...currentState.reviews];

    emit(currentState.copyWith(reviews: updatedList));
  }

  // دوال fetch و loadMore تبقى كما هي
  void fetchInitialReviews() async {
    if (state is ReviewsListLoading) return;
    emit(const ReviewsListState.loading());
    final result = await _reviewsRepository.getMyReviews(page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final reviewsList = paginationData.reviews ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || reviewsList.isEmpty;
        _currentPage = 1;
        emit(ReviewsListState.success(reviews: reviewsList, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(ReviewsListState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreReviews() async {
    if (state is! ReviewsListSuccess) return;
    final currentState = state as ReviewsListSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;
    emit(currentState.copyWith(isLoadingMore: true));
    _currentPage++;
    final result = await _reviewsRepository.getMyReviews(page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newReviews = paginationData.reviews ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || newReviews.isEmpty;
        emit(currentState.copyWith(
          reviews: List.of(currentState.reviews)..addAll(newReviews),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure(:final apiErrorModel):
        emit(currentState.copyWith(isLoadingMore: false));
        break;
    }
  }

  void deleteReview(int reviewId) async {
    if (state is! ReviewsListSuccess) return;
    final currentState = state as ReviewsListSuccess;
    final originalReviews = List<ReviewModel>.from(currentState.reviews);
    final updatedList = List<ReviewModel>.from(currentState.reviews)
      ..removeWhere((review) => review.id == reviewId);
    emit(currentState.copyWith(reviews: updatedList));
    final result = await _reviewsRepository.deleteReview(reviewId);
    if (result is Failure) {
      emit(currentState.copyWith(reviews: originalReviews));
    }
  }
}