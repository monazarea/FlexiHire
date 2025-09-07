// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_application_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateApplicationStatusState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateApplicationStatusState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateApplicationStatusState()';
  }
}

/// @nodoc
class $UpdateApplicationStatusStateCopyWith<$Res> {
  $UpdateApplicationStatusStateCopyWith(UpdateApplicationStatusState _,
      $Res Function(UpdateApplicationStatusState) __);
}

/// @nodoc

class _Initial implements UpdateApplicationStatusState {
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
    return 'UpdateApplicationStatusState.initial()';
  }
}

/// @nodoc

class UpdateStatusLoading implements UpdateApplicationStatusState {
  const UpdateStatusLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateApplicationStatusState.loading()';
  }
}

/// @nodoc

class UpdateStatusSuccess implements UpdateApplicationStatusState {
  const UpdateStatusSuccess(this.message);

  final String message;

  /// Create a copy of UpdateApplicationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateStatusSuccessCopyWith<UpdateStatusSuccess> get copyWith =>
      _$UpdateStatusSuccessCopyWithImpl<UpdateStatusSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateStatusSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'UpdateApplicationStatusState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UpdateStatusSuccessCopyWith<$Res>
    implements $UpdateApplicationStatusStateCopyWith<$Res> {
  factory $UpdateStatusSuccessCopyWith(
          UpdateStatusSuccess value, $Res Function(UpdateStatusSuccess) _then) =
      _$UpdateStatusSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UpdateStatusSuccessCopyWithImpl<$Res>
    implements $UpdateStatusSuccessCopyWith<$Res> {
  _$UpdateStatusSuccessCopyWithImpl(this._self, this._then);

  final UpdateStatusSuccess _self;
  final $Res Function(UpdateStatusSuccess) _then;

  /// Create a copy of UpdateApplicationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(UpdateStatusSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateStatusError implements UpdateApplicationStatusState {
  const UpdateStatusError(this.error);

  final String error;

  /// Create a copy of UpdateApplicationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateStatusErrorCopyWith<UpdateStatusError> get copyWith =>
      _$UpdateStatusErrorCopyWithImpl<UpdateStatusError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateStatusError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateApplicationStatusState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateStatusErrorCopyWith<$Res>
    implements $UpdateApplicationStatusStateCopyWith<$Res> {
  factory $UpdateStatusErrorCopyWith(
          UpdateStatusError value, $Res Function(UpdateStatusError) _then) =
      _$UpdateStatusErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateStatusErrorCopyWithImpl<$Res>
    implements $UpdateStatusErrorCopyWith<$Res> {
  _$UpdateStatusErrorCopyWithImpl(this._self, this._then);

  final UpdateStatusError _self;
  final $Res Function(UpdateStatusError) _then;

  /// Create a copy of UpdateApplicationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateStatusError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
