// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManageJobState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManageJobState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ManageJobState()';
  }
}

/// @nodoc
class $ManageJobStateCopyWith<$Res> {
  $ManageJobStateCopyWith(ManageJobState _, $Res Function(ManageJobState) __);
}

/// @nodoc

class _Initial implements ManageJobState {
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
    return 'ManageJobState.initial()';
  }
}

/// @nodoc

class ManageJobLoading implements ManageJobState {
  const ManageJobLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManageJobLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ManageJobState.loading()';
  }
}

/// @nodoc

class ManageJobSuccess implements ManageJobState {
  const ManageJobSuccess(this.response);

  final JobPostResponse response;

  /// Create a copy of ManageJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManageJobSuccessCopyWith<ManageJobSuccess> get copyWith =>
      _$ManageJobSuccessCopyWithImpl<ManageJobSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManageJobSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @override
  String toString() {
    return 'ManageJobState.success(response: $response)';
  }
}

/// @nodoc
abstract mixin class $ManageJobSuccessCopyWith<$Res>
    implements $ManageJobStateCopyWith<$Res> {
  factory $ManageJobSuccessCopyWith(
          ManageJobSuccess value, $Res Function(ManageJobSuccess) _then) =
      _$ManageJobSuccessCopyWithImpl;
  @useResult
  $Res call({JobPostResponse response});

  $JobPostResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$ManageJobSuccessCopyWithImpl<$Res>
    implements $ManageJobSuccessCopyWith<$Res> {
  _$ManageJobSuccessCopyWithImpl(this._self, this._then);

  final ManageJobSuccess _self;
  final $Res Function(ManageJobSuccess) _then;

  /// Create a copy of ManageJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(ManageJobSuccess(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as JobPostResponse,
    ));
  }

  /// Create a copy of ManageJobState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JobPostResponseCopyWith<$Res> get response {
    return $JobPostResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc

class ManageJobError implements ManageJobState {
  const ManageJobError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of ManageJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ManageJobErrorCopyWith<ManageJobError> get copyWith =>
      _$ManageJobErrorCopyWithImpl<ManageJobError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManageJobError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'ManageJobState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $ManageJobErrorCopyWith<$Res>
    implements $ManageJobStateCopyWith<$Res> {
  factory $ManageJobErrorCopyWith(
          ManageJobError value, $Res Function(ManageJobError) _then) =
      _$ManageJobErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$ManageJobErrorCopyWithImpl<$Res>
    implements $ManageJobErrorCopyWith<$Res> {
  _$ManageJobErrorCopyWithImpl(this._self, this._then);

  final ManageJobError _self;
  final $Res Function(ManageJobError) _then;

  /// Create a copy of ManageJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(ManageJobError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
