// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_for_job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplyForJobState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApplyForJobState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplyForJobState()';
  }
}

/// @nodoc
class $ApplyForJobStateCopyWith<$Res> {
  $ApplyForJobStateCopyWith(
      ApplyForJobState _, $Res Function(ApplyForJobState) __);
}

/// @nodoc

class _ApplyForJobInitial implements ApplyForJobState {
  const _ApplyForJobInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ApplyForJobInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplyForJobState.initial()';
  }
}

/// @nodoc

class ApplyForJobSubmitting implements ApplyForJobState {
  const ApplyForJobSubmitting();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApplyForJobSubmitting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplyForJobState.submitting()';
  }
}

/// @nodoc

class ApplyForJobSuccess implements ApplyForJobState {
  const ApplyForJobSuccess(this.response);

  final ApplyJobResponse response;

  /// Create a copy of ApplyForJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplyForJobSuccessCopyWith<ApplyForJobSuccess> get copyWith =>
      _$ApplyForJobSuccessCopyWithImpl<ApplyForJobSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplyForJobSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @override
  String toString() {
    return 'ApplyForJobState.success(response: $response)';
  }
}

/// @nodoc
abstract mixin class $ApplyForJobSuccessCopyWith<$Res>
    implements $ApplyForJobStateCopyWith<$Res> {
  factory $ApplyForJobSuccessCopyWith(
          ApplyForJobSuccess value, $Res Function(ApplyForJobSuccess) _then) =
      _$ApplyForJobSuccessCopyWithImpl;
  @useResult
  $Res call({ApplyJobResponse response});
}

/// @nodoc
class _$ApplyForJobSuccessCopyWithImpl<$Res>
    implements $ApplyForJobSuccessCopyWith<$Res> {
  _$ApplyForJobSuccessCopyWithImpl(this._self, this._then);

  final ApplyForJobSuccess _self;
  final $Res Function(ApplyForJobSuccess) _then;

  /// Create a copy of ApplyForJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(ApplyForJobSuccess(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as ApplyJobResponse,
    ));
  }
}

/// @nodoc

class ApplyForJobError implements ApplyForJobState {
  const ApplyForJobError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of ApplyForJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplyForJobErrorCopyWith<ApplyForJobError> get copyWith =>
      _$ApplyForJobErrorCopyWithImpl<ApplyForJobError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplyForJobError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'ApplyForJobState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $ApplyForJobErrorCopyWith<$Res>
    implements $ApplyForJobStateCopyWith<$Res> {
  factory $ApplyForJobErrorCopyWith(
          ApplyForJobError value, $Res Function(ApplyForJobError) _then) =
      _$ApplyForJobErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$ApplyForJobErrorCopyWithImpl<$Res>
    implements $ApplyForJobErrorCopyWith<$Res> {
  _$ApplyForJobErrorCopyWithImpl(this._self, this._then);

  final ApplyForJobError _self;
  final $Res Function(ApplyForJobError) _then;

  /// Create a copy of ApplyForJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(ApplyForJobError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
