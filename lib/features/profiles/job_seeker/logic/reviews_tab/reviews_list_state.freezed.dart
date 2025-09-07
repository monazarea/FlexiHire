// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewsListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReviewsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReviewsListState()';
  }
}

/// @nodoc
class $ReviewsListStateCopyWith<$Res> {
  $ReviewsListStateCopyWith(
      ReviewsListState _, $Res Function(ReviewsListState) __);
}

/// @nodoc

class _ReviewsListInitial implements ReviewsListState {
  const _ReviewsListInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ReviewsListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReviewsListState.initial()';
  }
}

/// @nodoc

class ReviewsListLoading implements ReviewsListState {
  const ReviewsListLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReviewsListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReviewsListState.loading()';
  }
}

/// @nodoc

class ReviewsListSuccess implements ReviewsListState {
  const ReviewsListSuccess(
      {required final List<ReviewModel> reviews,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _reviews = reviews;

  final List<ReviewModel> _reviews;
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of ReviewsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewsListSuccessCopyWith<ReviewsListSuccess> get copyWith =>
      _$ReviewsListSuccessCopyWithImpl<ReviewsListSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewsListSuccess &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reviews),
      isLoadingMore,
      hasReachedMax);

  @override
  String toString() {
    return 'ReviewsListState.success(reviews: $reviews, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $ReviewsListSuccessCopyWith<$Res>
    implements $ReviewsListStateCopyWith<$Res> {
  factory $ReviewsListSuccessCopyWith(
          ReviewsListSuccess value, $Res Function(ReviewsListSuccess) _then) =
      _$ReviewsListSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<ReviewModel> reviews, bool isLoadingMore, bool hasReachedMax});
}

/// @nodoc
class _$ReviewsListSuccessCopyWithImpl<$Res>
    implements $ReviewsListSuccessCopyWith<$Res> {
  _$ReviewsListSuccessCopyWithImpl(this._self, this._then);

  final ReviewsListSuccess _self;
  final $Res Function(ReviewsListSuccess) _then;

  /// Create a copy of ReviewsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reviews = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(ReviewsListSuccess(
      reviews: null == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
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

class ReviewsListError implements ReviewsListState {
  const ReviewsListError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of ReviewsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewsListErrorCopyWith<ReviewsListError> get copyWith =>
      _$ReviewsListErrorCopyWithImpl<ReviewsListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewsListError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'ReviewsListState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $ReviewsListErrorCopyWith<$Res>
    implements $ReviewsListStateCopyWith<$Res> {
  factory $ReviewsListErrorCopyWith(
          ReviewsListError value, $Res Function(ReviewsListError) _then) =
      _$ReviewsListErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$ReviewsListErrorCopyWithImpl<$Res>
    implements $ReviewsListErrorCopyWith<$Res> {
  _$ReviewsListErrorCopyWithImpl(this._self, this._then);

  final ReviewsListError _self;
  final $Res Function(ReviewsListError) _then;

  /// Create a copy of ReviewsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(ReviewsListError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
