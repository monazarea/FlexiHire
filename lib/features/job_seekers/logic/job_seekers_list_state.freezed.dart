// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_seekers_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobSeekersListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobSeekersListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobSeekersListState()';
  }
}

/// @nodoc
class $JobSeekersListStateCopyWith<$Res> {
  $JobSeekersListStateCopyWith(
      JobSeekersListState _, $Res Function(JobSeekersListState) __);
}

/// @nodoc

class _JobSeekersListInitial implements JobSeekersListState {
  const _JobSeekersListInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _JobSeekersListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobSeekersListState.initial()';
  }
}

/// @nodoc

class JobSeekersListLoading implements JobSeekersListState {
  const JobSeekersListLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobSeekersListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobSeekersListState.loading()';
  }
}

/// @nodoc

class JobSeekersListSuccess implements JobSeekersListState {
  const JobSeekersListSuccess(
      {required final List<JobSeekerListItemModel> jobSeekers,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _jobSeekers = jobSeekers;

  final List<JobSeekerListItemModel> _jobSeekers;
  List<JobSeekerListItemModel> get jobSeekers {
    if (_jobSeekers is EqualUnmodifiableListView) return _jobSeekers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobSeekers);
  }

  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of JobSeekersListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobSeekersListSuccessCopyWith<JobSeekersListSuccess> get copyWith =>
      _$JobSeekersListSuccessCopyWithImpl<JobSeekersListSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobSeekersListSuccess &&
            const DeepCollectionEquality()
                .equals(other._jobSeekers, _jobSeekers) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_jobSeekers),
      isLoadingMore,
      hasReachedMax);

  @override
  String toString() {
    return 'JobSeekersListState.success(jobSeekers: $jobSeekers, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $JobSeekersListSuccessCopyWith<$Res>
    implements $JobSeekersListStateCopyWith<$Res> {
  factory $JobSeekersListSuccessCopyWith(JobSeekersListSuccess value,
          $Res Function(JobSeekersListSuccess) _then) =
      _$JobSeekersListSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<JobSeekerListItemModel> jobSeekers,
      bool isLoadingMore,
      bool hasReachedMax});
}

/// @nodoc
class _$JobSeekersListSuccessCopyWithImpl<$Res>
    implements $JobSeekersListSuccessCopyWith<$Res> {
  _$JobSeekersListSuccessCopyWithImpl(this._self, this._then);

  final JobSeekersListSuccess _self;
  final $Res Function(JobSeekersListSuccess) _then;

  /// Create a copy of JobSeekersListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobSeekers = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(JobSeekersListSuccess(
      jobSeekers: null == jobSeekers
          ? _self._jobSeekers
          : jobSeekers // ignore: cast_nullable_to_non_nullable
              as List<JobSeekerListItemModel>,
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

class JobSeekersListError implements JobSeekersListState {
  const JobSeekersListError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of JobSeekersListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobSeekersListErrorCopyWith<JobSeekersListError> get copyWith =>
      _$JobSeekersListErrorCopyWithImpl<JobSeekersListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobSeekersListError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'JobSeekersListState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $JobSeekersListErrorCopyWith<$Res>
    implements $JobSeekersListStateCopyWith<$Res> {
  factory $JobSeekersListErrorCopyWith(
          JobSeekersListError value, $Res Function(JobSeekersListError) _then) =
      _$JobSeekersListErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$JobSeekersListErrorCopyWithImpl<$Res>
    implements $JobSeekersListErrorCopyWith<$Res> {
  _$JobSeekersListErrorCopyWithImpl(this._self, this._then);

  final JobSeekersListError _self;
  final $Res Function(JobSeekersListError) _then;

  /// Create a copy of JobSeekersListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(JobSeekersListError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
