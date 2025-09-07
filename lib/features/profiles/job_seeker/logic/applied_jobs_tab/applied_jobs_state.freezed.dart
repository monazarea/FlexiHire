// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applied_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppliedJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppliedJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppliedJobsState()';
  }
}

/// @nodoc
class $AppliedJobsStateCopyWith<$Res> {
  $AppliedJobsStateCopyWith(
      AppliedJobsState _, $Res Function(AppliedJobsState) __);
}

/// @nodoc

class _AppliedJobsInitial implements AppliedJobsState {
  const _AppliedJobsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppliedJobsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppliedJobsState.initial()';
  }
}

/// @nodoc

class AppliedJobsLoading implements AppliedJobsState {
  const AppliedJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppliedJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppliedJobsState.loading()';
  }
}

/// @nodoc

class AppliedJobsSuccess implements AppliedJobsState {
  const AppliedJobsSuccess(final List<AppliedJobModel> appliedJobs)
      : _appliedJobs = appliedJobs;

  final List<AppliedJobModel> _appliedJobs;
  List<AppliedJobModel> get appliedJobs {
    if (_appliedJobs is EqualUnmodifiableListView) return _appliedJobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedJobs);
  }

  /// Create a copy of AppliedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppliedJobsSuccessCopyWith<AppliedJobsSuccess> get copyWith =>
      _$AppliedJobsSuccessCopyWithImpl<AppliedJobsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppliedJobsSuccess &&
            const DeepCollectionEquality()
                .equals(other._appliedJobs, _appliedJobs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_appliedJobs));

  @override
  String toString() {
    return 'AppliedJobsState.success(appliedJobs: $appliedJobs)';
  }
}

/// @nodoc
abstract mixin class $AppliedJobsSuccessCopyWith<$Res>
    implements $AppliedJobsStateCopyWith<$Res> {
  factory $AppliedJobsSuccessCopyWith(
          AppliedJobsSuccess value, $Res Function(AppliedJobsSuccess) _then) =
      _$AppliedJobsSuccessCopyWithImpl;
  @useResult
  $Res call({List<AppliedJobModel> appliedJobs});
}

/// @nodoc
class _$AppliedJobsSuccessCopyWithImpl<$Res>
    implements $AppliedJobsSuccessCopyWith<$Res> {
  _$AppliedJobsSuccessCopyWithImpl(this._self, this._then);

  final AppliedJobsSuccess _self;
  final $Res Function(AppliedJobsSuccess) _then;

  /// Create a copy of AppliedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appliedJobs = null,
  }) {
    return _then(AppliedJobsSuccess(
      null == appliedJobs
          ? _self._appliedJobs
          : appliedJobs // ignore: cast_nullable_to_non_nullable
              as List<AppliedJobModel>,
    ));
  }
}

/// @nodoc

class AppliedJobsError implements AppliedJobsState {
  const AppliedJobsError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of AppliedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppliedJobsErrorCopyWith<AppliedJobsError> get copyWith =>
      _$AppliedJobsErrorCopyWithImpl<AppliedJobsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppliedJobsError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'AppliedJobsState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $AppliedJobsErrorCopyWith<$Res>
    implements $AppliedJobsStateCopyWith<$Res> {
  factory $AppliedJobsErrorCopyWith(
          AppliedJobsError value, $Res Function(AppliedJobsError) _then) =
      _$AppliedJobsErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$AppliedJobsErrorCopyWithImpl<$Res>
    implements $AppliedJobsErrorCopyWith<$Res> {
  _$AppliedJobsErrorCopyWithImpl(this._self, this._then);

  final AppliedJobsError _self;
  final $Res Function(AppliedJobsError) _then;

  /// Create a copy of AppliedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(AppliedJobsError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
