// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecentJobsState()';
  }
}

/// @nodoc
class $RecentJobsStateCopyWith<$Res> {
  $RecentJobsStateCopyWith(
      RecentJobsState _, $Res Function(RecentJobsState) __);
}

/// @nodoc

class _Initial implements RecentJobsState {
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
    return 'RecentJobsState.initial()';
  }
}

/// @nodoc

class RecentJobsLoading implements RecentJobsState {
  const RecentJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecentJobsState.recentJobsLoading()';
  }
}

/// @nodoc

class RecentJobsSuccess implements RecentJobsState {
  const RecentJobsSuccess(final List<JobModel> jobs) : _jobs = jobs;

  final List<JobModel> _jobs;
  List<JobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  /// Create a copy of RecentJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecentJobsSuccessCopyWith<RecentJobsSuccess> get copyWith =>
      _$RecentJobsSuccessCopyWithImpl<RecentJobsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentJobsSuccess &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobs));

  @override
  String toString() {
    return 'RecentJobsState.recentJobsSuccess(jobs: $jobs)';
  }
}

/// @nodoc
abstract mixin class $RecentJobsSuccessCopyWith<$Res>
    implements $RecentJobsStateCopyWith<$Res> {
  factory $RecentJobsSuccessCopyWith(
          RecentJobsSuccess value, $Res Function(RecentJobsSuccess) _then) =
      _$RecentJobsSuccessCopyWithImpl;
  @useResult
  $Res call({List<JobModel> jobs});
}

/// @nodoc
class _$RecentJobsSuccessCopyWithImpl<$Res>
    implements $RecentJobsSuccessCopyWith<$Res> {
  _$RecentJobsSuccessCopyWithImpl(this._self, this._then);

  final RecentJobsSuccess _self;
  final $Res Function(RecentJobsSuccess) _then;

  /// Create a copy of RecentJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobs = null,
  }) {
    return _then(RecentJobsSuccess(
      null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
    ));
  }
}

/// @nodoc

class RecentJobsError implements RecentJobsState {
  const RecentJobsError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of RecentJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecentJobsErrorCopyWith<RecentJobsError> get copyWith =>
      _$RecentJobsErrorCopyWithImpl<RecentJobsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentJobsError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'RecentJobsState.recentJobsError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $RecentJobsErrorCopyWith<$Res>
    implements $RecentJobsStateCopyWith<$Res> {
  factory $RecentJobsErrorCopyWith(
          RecentJobsError value, $Res Function(RecentJobsError) _then) =
      _$RecentJobsErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$RecentJobsErrorCopyWithImpl<$Res>
    implements $RecentJobsErrorCopyWith<$Res> {
  _$RecentJobsErrorCopyWithImpl(this._self, this._then);

  final RecentJobsError _self;
  final $Res Function(RecentJobsError) _then;

  /// Create a copy of RecentJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(RecentJobsError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
