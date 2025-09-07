// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobDetailsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobDetailsState()';
  }
}

/// @nodoc
class $JobDetailsStateCopyWith<$Res> {
  $JobDetailsStateCopyWith(
      JobDetailsState _, $Res Function(JobDetailsState) __);
}

/// @nodoc

class _JobDetailsInitial implements JobDetailsState {
  const _JobDetailsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _JobDetailsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobDetailsState.initial()';
  }
}

/// @nodoc

class JobDetailsLoading implements JobDetailsState {
  const JobDetailsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobDetailsState.loading()';
  }
}

/// @nodoc

class JobDetailsSuccess implements JobDetailsState {
  const JobDetailsSuccess(this.jobDetailsResponse);

  final JobDetailsResponse jobDetailsResponse;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobDetailsSuccessCopyWith<JobDetailsSuccess> get copyWith =>
      _$JobDetailsSuccessCopyWithImpl<JobDetailsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobDetailsSuccess &&
            (identical(other.jobDetailsResponse, jobDetailsResponse) ||
                other.jobDetailsResponse == jobDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jobDetailsResponse);

  @override
  String toString() {
    return 'JobDetailsState.success(jobDetailsResponse: $jobDetailsResponse)';
  }
}

/// @nodoc
abstract mixin class $JobDetailsSuccessCopyWith<$Res>
    implements $JobDetailsStateCopyWith<$Res> {
  factory $JobDetailsSuccessCopyWith(
          JobDetailsSuccess value, $Res Function(JobDetailsSuccess) _then) =
      _$JobDetailsSuccessCopyWithImpl;
  @useResult
  $Res call({JobDetailsResponse jobDetailsResponse});
}

/// @nodoc
class _$JobDetailsSuccessCopyWithImpl<$Res>
    implements $JobDetailsSuccessCopyWith<$Res> {
  _$JobDetailsSuccessCopyWithImpl(this._self, this._then);

  final JobDetailsSuccess _self;
  final $Res Function(JobDetailsSuccess) _then;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobDetailsResponse = null,
  }) {
    return _then(JobDetailsSuccess(
      null == jobDetailsResponse
          ? _self.jobDetailsResponse
          : jobDetailsResponse // ignore: cast_nullable_to_non_nullable
              as JobDetailsResponse,
    ));
  }
}

/// @nodoc

class JobDetailsError implements JobDetailsState {
  const JobDetailsError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobDetailsErrorCopyWith<JobDetailsError> get copyWith =>
      _$JobDetailsErrorCopyWithImpl<JobDetailsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobDetailsError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'JobDetailsState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $JobDetailsErrorCopyWith<$Res>
    implements $JobDetailsStateCopyWith<$Res> {
  factory $JobDetailsErrorCopyWith(
          JobDetailsError value, $Res Function(JobDetailsError) _then) =
      _$JobDetailsErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$JobDetailsErrorCopyWithImpl<$Res>
    implements $JobDetailsErrorCopyWith<$Res> {
  _$JobDetailsErrorCopyWithImpl(this._self, this._then);

  final JobDetailsError _self;
  final $Res Function(JobDetailsError) _then;

  /// Create a copy of JobDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(JobDetailsError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
