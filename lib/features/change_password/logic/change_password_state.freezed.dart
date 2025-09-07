// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ChangePasswordState()';
  }
}

/// @nodoc
class $ChangePasswordStateCopyWith<$Res> {
  $ChangePasswordStateCopyWith(
      ChangePasswordState _, $Res Function(ChangePasswordState) __);
}

/// @nodoc

class _Initial implements ChangePasswordState {
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
    return 'ChangePasswordState.initial()';
  }
}

/// @nodoc

class ChangePasswordLoading implements ChangePasswordState {
  const ChangePasswordLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePasswordLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ChangePasswordState.loading()';
  }
}

/// @nodoc

class ChangePasswordSuccess implements ChangePasswordState {
  const ChangePasswordSuccess(this.message);

  final String message;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordSuccessCopyWith<ChangePasswordSuccess> get copyWith =>
      _$ChangePasswordSuccessCopyWithImpl<ChangePasswordSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ChangePasswordState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordSuccessCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordSuccessCopyWith(ChangePasswordSuccess value,
          $Res Function(ChangePasswordSuccess) _then) =
      _$ChangePasswordSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ChangePasswordSuccessCopyWithImpl<$Res>
    implements $ChangePasswordSuccessCopyWith<$Res> {
  _$ChangePasswordSuccessCopyWithImpl(this._self, this._then);

  final ChangePasswordSuccess _self;
  final $Res Function(ChangePasswordSuccess) _then;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ChangePasswordSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ChangePasswordError implements ChangePasswordState {
  const ChangePasswordError(this.error);

  final String error;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordErrorCopyWith<ChangePasswordError> get copyWith =>
      _$ChangePasswordErrorCopyWithImpl<ChangePasswordError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ChangePasswordState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordErrorCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordErrorCopyWith(
          ChangePasswordError value, $Res Function(ChangePasswordError) _then) =
      _$ChangePasswordErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ChangePasswordErrorCopyWithImpl<$Res>
    implements $ChangePasswordErrorCopyWith<$Res> {
  _$ChangePasswordErrorCopyWithImpl(this._self, this._then);

  final ChangePasswordError _self;
  final $Res Function(ChangePasswordError) _then;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ChangePasswordError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
