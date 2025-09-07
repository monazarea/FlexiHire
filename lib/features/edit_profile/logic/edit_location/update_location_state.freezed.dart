// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateLocationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateLocationState()';
  }
}

/// @nodoc
class $UpdateLocationStateCopyWith<$Res> {
  $UpdateLocationStateCopyWith(
      UpdateLocationState _, $Res Function(UpdateLocationState) __);
}

/// @nodoc

class _Initial implements UpdateLocationState {
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
    return 'UpdateLocationState.initial()';
  }
}

/// @nodoc

class UpdateLocationLoading implements UpdateLocationState {
  const UpdateLocationLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateLocationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateLocationState.loading()';
  }
}

/// @nodoc

class UpdateLocationSuccess implements UpdateLocationState {
  const UpdateLocationSuccess(this.message);

  final String message;

  /// Create a copy of UpdateLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateLocationSuccessCopyWith<UpdateLocationSuccess> get copyWith =>
      _$UpdateLocationSuccessCopyWithImpl<UpdateLocationSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateLocationSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'UpdateLocationState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UpdateLocationSuccessCopyWith<$Res>
    implements $UpdateLocationStateCopyWith<$Res> {
  factory $UpdateLocationSuccessCopyWith(UpdateLocationSuccess value,
          $Res Function(UpdateLocationSuccess) _then) =
      _$UpdateLocationSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UpdateLocationSuccessCopyWithImpl<$Res>
    implements $UpdateLocationSuccessCopyWith<$Res> {
  _$UpdateLocationSuccessCopyWithImpl(this._self, this._then);

  final UpdateLocationSuccess _self;
  final $Res Function(UpdateLocationSuccess) _then;

  /// Create a copy of UpdateLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(UpdateLocationSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateLocationError implements UpdateLocationState {
  const UpdateLocationError(this.error);

  final String error;

  /// Create a copy of UpdateLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateLocationErrorCopyWith<UpdateLocationError> get copyWith =>
      _$UpdateLocationErrorCopyWithImpl<UpdateLocationError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateLocationError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateLocationState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateLocationErrorCopyWith<$Res>
    implements $UpdateLocationStateCopyWith<$Res> {
  factory $UpdateLocationErrorCopyWith(
          UpdateLocationError value, $Res Function(UpdateLocationError) _then) =
      _$UpdateLocationErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateLocationErrorCopyWithImpl<$Res>
    implements $UpdateLocationErrorCopyWith<$Res> {
  _$UpdateLocationErrorCopyWithImpl(this._self, this._then);

  final UpdateLocationError _self;
  final $Res Function(UpdateLocationError) _then;

  /// Create a copy of UpdateLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateLocationError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
