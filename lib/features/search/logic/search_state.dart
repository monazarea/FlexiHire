import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'search_type.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitial;
  const factory SearchState.loading() = SearchLoading;

  const factory SearchState.success({
    required SearchType searchType,
    required bool isTypeLocked,

    String? keyword,
    String? location,
    String? jobSearch,
    @Default([]) List<String> skills,
    int? minSalary,
    int? maxSalary,

    required List<dynamic> results,
    @Default(1) int currentPage,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = SearchSuccess;

  const factory SearchState.error(ApiErrorModel apiErrorModel) = SearchError;
}
