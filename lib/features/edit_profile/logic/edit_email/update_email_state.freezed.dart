// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateEmailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateEmailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateEmailState()';
  }
}

/// @nodoc
class $UpdateEmailStateCopyWith<$Res> {
  $UpdateEmailStateCopyWith(
      UpdateEmailState _, $Res Function(UpdateEmailState) __);
}

/// @nodoc

class _Initial implements UpdateEmailState {
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
    return 'UpdateEmailState.initial()';
  }
}

/// @nodoc

class UpdateEmailLoading implements UpdateEmailState {
  const UpdateEmailLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateEmailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateEmailState.updateEmailLoading()';
  }
}

/// @nodoc

class UpdateEmailSuccess implements UpdateEmailState {
  const UpdateEmailSuccess(this.message);

  final String message;

  /// Create a copy of UpdateEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateEmailSuccessCopyWith<UpdateEmailSuccess> get copyWith =>
      _$UpdateEmailSuccessCopyWithImpl<UpdateEmailSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateEmailSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'UpdateEmailState.updateEmailSuccess(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UpdateEmailSuccessCopyWith<$Res>
    implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailSuccessCopyWith(
          UpdateEmailSuccess value, $Res Function(UpdateEmailSuccess) _then) =
      _$UpdateEmailSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UpdateEmailSuccessCopyWithImpl<$Res>
    implements $UpdateEmailSuccessCopyWith<$Res> {
  _$UpdateEmailSuccessCopyWithImpl(this._self, this._then);

  final UpdateEmailSuccess _self;
  final $Res Function(UpdateEmailSuccess) _then;

  /// Create a copy of UpdateEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(UpdateEmailSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateEmailError implements UpdateEmailState {
  const UpdateEmailError(this.error);

  final String error;

  /// Create a copy of UpdateEmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateEmailErrorCopyWith<UpdateEmailError> get copyWith =>
      _$UpdateEmailErrorCopyWithImpl<UpdateEmailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateEmailError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateEmailState.updateEmailError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateEmailErrorCopyWith<$Res>
    implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailErrorCopyWith(
          UpdateEmailError value, $Res Function(UpdateEmailError) _then) =
      _$UpdateEmailErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateEmailErrorCopyWithImpl<$Res>
    implements $UpdateEmailErrorCopyWith<$Res> {
  _$UpdateEmailErrorCopyWithImpl(this._self, this._then);

  final UpdateEmailError _self;
  final $Res Function(UpdateEmailError) _then;

  /// Create a copy of UpdateEmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateEmailError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
