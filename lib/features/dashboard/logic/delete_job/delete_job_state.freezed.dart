// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteJobState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteJobState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteJobState()';
  }
}

/// @nodoc
class $DeleteJobStateCopyWith<$Res> {
  $DeleteJobStateCopyWith(DeleteJobState _, $Res Function(DeleteJobState) __);
}

/// @nodoc

class _DeleteJobInitial implements DeleteJobState {
  const _DeleteJobInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteJobInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteJobState.initial()';
  }
}

/// @nodoc

class DeleteJobLoading implements DeleteJobState {
  const DeleteJobLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteJobLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteJobState.loading()';
  }
}

/// @nodoc

class DeleteJobSuccess implements DeleteJobState {
  const DeleteJobSuccess(this.response);

  final DeleteJobResponse response;

  /// Create a copy of DeleteJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteJobSuccessCopyWith<DeleteJobSuccess> get copyWith =>
      _$DeleteJobSuccessCopyWithImpl<DeleteJobSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteJobSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @override
  String toString() {
    return 'DeleteJobState.success(response: $response)';
  }
}

/// @nodoc
abstract mixin class $DeleteJobSuccessCopyWith<$Res>
    implements $DeleteJobStateCopyWith<$Res> {
  factory $DeleteJobSuccessCopyWith(
          DeleteJobSuccess value, $Res Function(DeleteJobSuccess) _then) =
      _$DeleteJobSuccessCopyWithImpl;
  @useResult
  $Res call({DeleteJobResponse response});
}

/// @nodoc
class _$DeleteJobSuccessCopyWithImpl<$Res>
    implements $DeleteJobSuccessCopyWith<$Res> {
  _$DeleteJobSuccessCopyWithImpl(this._self, this._then);

  final DeleteJobSuccess _self;
  final $Res Function(DeleteJobSuccess) _then;

  /// Create a copy of DeleteJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(DeleteJobSuccess(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as DeleteJobResponse,
    ));
  }
}

/// @nodoc

class DeleteJobError implements DeleteJobState {
  const DeleteJobError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of DeleteJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteJobErrorCopyWith<DeleteJobError> get copyWith =>
      _$DeleteJobErrorCopyWithImpl<DeleteJobError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteJobError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'DeleteJobState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $DeleteJobErrorCopyWith<$Res>
    implements $DeleteJobStateCopyWith<$Res> {
  factory $DeleteJobErrorCopyWith(
          DeleteJobError value, $Res Function(DeleteJobError) _then) =
      _$DeleteJobErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$DeleteJobErrorCopyWithImpl<$Res>
    implements $DeleteJobErrorCopyWith<$Res> {
  _$DeleteJobErrorCopyWithImpl(this._self, this._then);

  final DeleteJobError _self;
  final $Res Function(DeleteJobError) _then;

  /// Create a copy of DeleteJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(DeleteJobError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
