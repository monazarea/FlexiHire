// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posted_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostedJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostedJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostedJobsState()';
  }
}

/// @nodoc
class $PostedJobsStateCopyWith<$Res> {
  $PostedJobsStateCopyWith(
      PostedJobsState _, $Res Function(PostedJobsState) __);
}

/// @nodoc

class _PostedJobsInitial implements PostedJobsState {
  const _PostedJobsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostedJobsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostedJobsState.initial()';
  }
}

/// @nodoc

class PostedJobsLoading implements PostedJobsState {
  const PostedJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostedJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostedJobsState.loading()';
  }
}

/// @nodoc

class PostedJobsSuccess implements PostedJobsState {
  const PostedJobsSuccess(
      {required final List<DashboardJobModel> jobs,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _jobs = jobs;

  final List<DashboardJobModel> _jobs;
  List<DashboardJobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of PostedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostedJobsSuccessCopyWith<PostedJobsSuccess> get copyWith =>
      _$PostedJobsSuccessCopyWithImpl<PostedJobsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostedJobsSuccess &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_jobs), isLoadingMore, hasReachedMax);

  @override
  String toString() {
    return 'PostedJobsState.success(jobs: $jobs, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $PostedJobsSuccessCopyWith<$Res>
    implements $PostedJobsStateCopyWith<$Res> {
  factory $PostedJobsSuccessCopyWith(
          PostedJobsSuccess value, $Res Function(PostedJobsSuccess) _then) =
      _$PostedJobsSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<DashboardJobModel> jobs, bool isLoadingMore, bool hasReachedMax});
}

/// @nodoc
class _$PostedJobsSuccessCopyWithImpl<$Res>
    implements $PostedJobsSuccessCopyWith<$Res> {
  _$PostedJobsSuccessCopyWithImpl(this._self, this._then);

  final PostedJobsSuccess _self;
  final $Res Function(PostedJobsSuccess) _then;

  /// Create a copy of PostedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobs = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(PostedJobsSuccess(
      jobs: null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<DashboardJobModel>,
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

class PostedJobsError implements PostedJobsState {
  const PostedJobsError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of PostedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostedJobsErrorCopyWith<PostedJobsError> get copyWith =>
      _$PostedJobsErrorCopyWithImpl<PostedJobsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostedJobsError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'PostedJobsState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $PostedJobsErrorCopyWith<$Res>
    implements $PostedJobsStateCopyWith<$Res> {
  factory $PostedJobsErrorCopyWith(
          PostedJobsError value, $Res Function(PostedJobsError) _then) =
      _$PostedJobsErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$PostedJobsErrorCopyWithImpl<$Res>
    implements $PostedJobsErrorCopyWith<$Res> {
  _$PostedJobsErrorCopyWithImpl(this._self, this._then);

  final PostedJobsError _self;
  final $Res Function(PostedJobsError) _then;

  /// Create a copy of PostedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(PostedJobsError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
