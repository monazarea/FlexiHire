// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobsListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobsListState()';
  }
}

/// @nodoc
class $JobsListStateCopyWith<$Res> {
  $JobsListStateCopyWith(JobsListState _, $Res Function(JobsListState) __);
}

/// @nodoc

class _JobsListInitial implements JobsListState {
  const _JobsListInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _JobsListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobsListState.initial()';
  }
}

/// @nodoc

class JobsListLoading implements JobsListState {
  const JobsListLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobsListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobsListState.loading()';
  }
}

/// @nodoc

class JobsListSuccess implements JobsListState {
  const JobsListSuccess(
      {required final List<JobModel> jobs,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _jobs = jobs;

  final List<JobModel> _jobs;
  List<JobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of JobsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobsListSuccessCopyWith<JobsListSuccess> get copyWith =>
      _$JobsListSuccessCopyWithImpl<JobsListSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobsListSuccess &&
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
    return 'JobsListState.success(jobs: $jobs, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $JobsListSuccessCopyWith<$Res>
    implements $JobsListStateCopyWith<$Res> {
  factory $JobsListSuccessCopyWith(
          JobsListSuccess value, $Res Function(JobsListSuccess) _then) =
      _$JobsListSuccessCopyWithImpl;
  @useResult
  $Res call({List<JobModel> jobs, bool isLoadingMore, bool hasReachedMax});
}

/// @nodoc
class _$JobsListSuccessCopyWithImpl<$Res>
    implements $JobsListSuccessCopyWith<$Res> {
  _$JobsListSuccessCopyWithImpl(this._self, this._then);

  final JobsListSuccess _self;
  final $Res Function(JobsListSuccess) _then;

  /// Create a copy of JobsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobs = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(JobsListSuccess(
      jobs: null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
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

class JobsListError implements JobsListState {
  const JobsListError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of JobsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobsListErrorCopyWith<JobsListError> get copyWith =>
      _$JobsListErrorCopyWithImpl<JobsListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobsListError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'JobsListState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $JobsListErrorCopyWith<$Res>
    implements $JobsListStateCopyWith<$Res> {
  factory $JobsListErrorCopyWith(
          JobsListError value, $Res Function(JobsListError) _then) =
      _$JobsListErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$JobsListErrorCopyWithImpl<$Res>
    implements $JobsListErrorCopyWith<$Res> {
  _$JobsListErrorCopyWithImpl(this._self, this._then);

  final JobsListError _self;
  final $Res Function(JobsListError) _then;

  /// Create a copy of JobsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(JobsListError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
