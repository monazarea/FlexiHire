// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetPasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPasswordState()';
  }
}

/// @nodoc
class $ResetPasswordStateCopyWith<$Res> {
  $ResetPasswordStateCopyWith(
      ResetPasswordState _, $Res Function(ResetPasswordState) __);
}

/// @nodoc

class _Initial implements ResetPasswordState {
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
    return 'ResetPasswordState.initial()';
  }
}

/// @nodoc

class ResetPasswordLoading implements ResetPasswordState {
  const ResetPasswordLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetPasswordLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPasswordState.loading()';
  }
}

/// @nodoc

class ResetPasswordSuccess implements ResetPasswordState {
  const ResetPasswordSuccess(this.message);

  final String message;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordSuccessCopyWith<ResetPasswordSuccess> get copyWith =>
      _$ResetPasswordSuccessCopyWithImpl<ResetPasswordSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ResetPasswordState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordSuccessCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordSuccessCopyWith(ResetPasswordSuccess value,
          $Res Function(ResetPasswordSuccess) _then) =
      _$ResetPasswordSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ResetPasswordSuccessCopyWithImpl<$Res>
    implements $ResetPasswordSuccessCopyWith<$Res> {
  _$ResetPasswordSuccessCopyWithImpl(this._self, this._then);

  final ResetPasswordSuccess _self;
  final $Res Function(ResetPasswordSuccess) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ResetPasswordSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ResetPasswordError implements ResetPasswordState {
  const ResetPasswordError(this.error);

  final String error;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith =>
      _$ResetPasswordErrorCopyWithImpl<ResetPasswordError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ResetPasswordState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordErrorCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordErrorCopyWith(
          ResetPasswordError value, $Res Function(ResetPasswordError) _then) =
      _$ResetPasswordErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ResetPasswordErrorCopyWithImpl<$Res>
    implements $ResetPasswordErrorCopyWith<$Res> {
  _$ResetPasswordErrorCopyWithImpl(this._self, this._then);

  final ResetPasswordError _self;
  final $Res Function(ResetPasswordError) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ResetPasswordError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
