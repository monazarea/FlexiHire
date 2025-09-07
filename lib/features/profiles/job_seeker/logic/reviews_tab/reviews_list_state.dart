import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';

part 'reviews_list_state.freezed.dart';

@freezed
class ReviewsListState with _$ReviewsListState {
  const factory ReviewsListState.initial() = _ReviewsListInitial;
  const factory ReviewsListState.loading() = ReviewsListLoading;
  const factory ReviewsListState.success({
    required List<ReviewModel> reviews,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = ReviewsListSuccess;
  const factory ReviewsListState.error(ApiErrorModel apiErrorModel) = ReviewsListError;
}