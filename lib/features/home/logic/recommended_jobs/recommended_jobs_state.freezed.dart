// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecommendedJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecommendedJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedJobsState()';
  }
}

/// @nodoc
class $RecommendedJobsStateCopyWith<$Res> {
  $RecommendedJobsStateCopyWith(
      RecommendedJobsState _, $Res Function(RecommendedJobsState) __);
}

/// @nodoc

class _Initial implements RecommendedJobsState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedJobsState.initial()';
  }
}

/// @nodoc

class RecommendedJobsLoading implements RecommendedJobsState {
  const RecommendedJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecommendedJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedJobsState.loading()';
  }
}

/// @nodoc

class RecommendedJobsSuccess implements RecommendedJobsState {
  const RecommendedJobsSuccess(final List<JobModel> jobs) : _jobs = jobs;

  final List<JobModel> _jobs;
  List<JobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  /// Create a copy of RecommendedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecommendedJobsSuccessCopyWith<RecommendedJobsSuccess> get copyWith =>
      _$RecommendedJobsSuccessCopyWithImpl<RecommendedJobsSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecommendedJobsSuccess &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobs));

  @override
  String toString() {
    return 'RecommendedJobsState.success(jobs: $jobs)';
  }
}

/// @nodoc
abstract mixin class $RecommendedJobsSuccessCopyWith<$Res>
    implements $RecommendedJobsStateCopyWith<$Res> {
  factory $RecommendedJobsSuccessCopyWith(RecommendedJobsSuccess value,
          $Res Function(RecommendedJobsSuccess) _then) =
      _$RecommendedJobsSuccessCopyWithImpl;
  @useResult
  $Res call({List<JobModel> jobs});
}

/// @nodoc
class _$RecommendedJobsSuccessCopyWithImpl<$Res>
    implements $RecommendedJobsSuccessCopyWith<$Res> {
  _$RecommendedJobsSuccessCopyWithImpl(this._self, this._then);

  final RecommendedJobsSuccess _self;
  final $Res Function(RecommendedJobsSuccess) _then;

  /// Create a copy of RecommendedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobs = null,
  }) {
    return _then(RecommendedJobsSuccess(
      null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
    ));
  }
}

/// @nodoc

class RecommendedJobsError implements RecommendedJobsState {
  const RecommendedJobsError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of RecommendedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecommendedJobsErrorCopyWith<RecommendedJobsError> get copyWith =>
      _$RecommendedJobsErrorCopyWithImpl<RecommendedJobsError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecommendedJobsError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'RecommendedJobsState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $RecommendedJobsErrorCopyWith<$Res>
    implements $RecommendedJobsStateCopyWith<$Res> {
  factory $RecommendedJobsErrorCopyWith(RecommendedJobsError value,
          $Res Function(RecommendedJobsError) _then) =
      _$RecommendedJobsErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$RecommendedJobsErrorCopyWithImpl<$Res>
    implements $RecommendedJobsErrorCopyWith<$Res> {
  _$RecommendedJobsErrorCopyWithImpl(this._self, this._then);

  final RecommendedJobsError _self;
  final $Res Function(RecommendedJobsError) _then;

  /// Create a copy of RecommendedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(RecommendedJobsError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
