// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchState()';
  }
}

/// @nodoc
class $SearchStateCopyWith<$Res> {
  $SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}

/// @nodoc

class _SearchInitial implements SearchState {
  const _SearchInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchState.initial()';
  }
}

/// @nodoc

class SearchLoading implements SearchState {
  const SearchLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchState.loading()';
  }
}

/// @nodoc

class SearchSuccess implements SearchState {
  const SearchSuccess(
      {required this.searchType,
      required this.isTypeLocked,
      this.keyword,
      this.location,
      this.jobSearch,
      final List<String> skills = const [],
      this.minSalary,
      this.maxSalary,
      required final List<dynamic> results,
      this.currentPage = 1,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _skills = skills,
        _results = results;

  final SearchType searchType;
  final bool isTypeLocked;
  final String? keyword;
  final String? location;
  final String? jobSearch;
  final List<String> _skills;
  @JsonKey()
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final int? minSalary;
  final int? maxSalary;
  final List<dynamic> _results;
  List<dynamic> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @JsonKey()
  final int currentPage;
  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchSuccessCopyWith<SearchSuccess> get copyWith =>
      _$SearchSuccessCopyWithImpl<SearchSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchSuccess &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            (identical(other.isTypeLocked, isTypeLocked) ||
                other.isTypeLocked == isTypeLocked) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.jobSearch, jobSearch) ||
                other.jobSearch == jobSearch) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchType,
      isTypeLocked,
      keyword,
      location,
      jobSearch,
      const DeepCollectionEquality().hash(_skills),
      minSalary,
      maxSalary,
      const DeepCollectionEquality().hash(_results),
      currentPage,
      isLoadingMore,
      hasReachedMax);

  @override
  String toString() {
    return 'SearchState.success(searchType: $searchType, isTypeLocked: $isTypeLocked, keyword: $keyword, location: $location, jobSearch: $jobSearch, skills: $skills, minSalary: $minSalary, maxSalary: $maxSalary, results: $results, currentPage: $currentPage, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $SearchSuccessCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchSuccessCopyWith(
          SearchSuccess value, $Res Function(SearchSuccess) _then) =
      _$SearchSuccessCopyWithImpl;
  @useResult
  $Res call(
      {SearchType searchType,
      bool isTypeLocked,
      String? keyword,
      String? location,
      String? jobSearch,
      List<String> skills,
      int? minSalary,
      int? maxSalary,
      List<dynamic> results,
      int currentPage,
      bool isLoadingMore,
      bool hasReachedMax});
}

/// @nodoc
class _$SearchSuccessCopyWithImpl<$Res>
    implements $SearchSuccessCopyWith<$Res> {
  _$SearchSuccessCopyWithImpl(this._self, this._then);

  final SearchSuccess _self;
  final $Res Function(SearchSuccess) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchType = null,
    Object? isTypeLocked = null,
    Object? keyword = freezed,
    Object? location = freezed,
    Object? jobSearch = freezed,
    Object? skills = null,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? results = null,
    Object? currentPage = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(SearchSuccess(
      searchType: null == searchType
          ? _self.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      isTypeLocked: null == isTypeLocked
          ? _self.isTypeLocked
          : isTypeLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: freezed == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      jobSearch: freezed == jobSearch
          ? _self.jobSearch
          : jobSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minSalary: freezed == minSalary
          ? _self.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _self.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SearchError implements SearchState {
  const SearchError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchErrorCopyWith<SearchError> get copyWith =>
      _$SearchErrorCopyWithImpl<SearchError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'SearchState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $SearchErrorCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchErrorCopyWith(
          SearchError value, $Res Function(SearchError) _then) =
      _$SearchErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$SearchErrorCopyWithImpl<$Res> implements $SearchErrorCopyWith<$Res> {
  _$SearchErrorCopyWithImpl(this._self, this._then);

  final SearchError _self;
  final $Res Function(SearchError) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(SearchError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
