// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cv_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCvState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateCvState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateCvState()';
  }
}

/// @nodoc
class $UpdateCvStateCopyWith<$Res> {
  $UpdateCvStateCopyWith(UpdateCvState _, $Res Function(UpdateCvState) __);
}

/// @nodoc

class _Initial implements UpdateCvState {
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
    return 'UpdateCvState.initial()';
  }
}

/// @nodoc

class UpdateCvLoading implements UpdateCvState {
  const UpdateCvLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateCvLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateCvState.loading()';
  }
}

/// @nodoc

class UpdateCvSuccess implements UpdateCvState {
  const UpdateCvSuccess(this.message, this.newCvUrl);

  final String message;
  final String newCvUrl;

  /// Create a copy of UpdateCvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCvSuccessCopyWith<UpdateCvSuccess> get copyWith =>
      _$UpdateCvSuccessCopyWithImpl<UpdateCvSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateCvSuccess &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.newCvUrl, newCvUrl) ||
                other.newCvUrl == newCvUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, newCvUrl);

  @override
  String toString() {
    return 'UpdateCvState.success(message: $message, newCvUrl: $newCvUrl)';
  }
}

/// @nodoc
abstract mixin class $UpdateCvSuccessCopyWith<$Res>
    implements $UpdateCvStateCopyWith<$Res> {
  factory $UpdateCvSuccessCopyWith(
          UpdateCvSuccess value, $Res Function(UpdateCvSuccess) _then) =
      _$UpdateCvSuccessCopyWithImpl;
  @useResult
  $Res call({String message, String newCvUrl});
}

/// @nodoc
class _$UpdateCvSuccessCopyWithImpl<$Res>
    implements $UpdateCvSuccessCopyWith<$Res> {
  _$UpdateCvSuccessCopyWithImpl(this._self, this._then);

  final UpdateCvSuccess _self;
  final $Res Function(UpdateCvSuccess) _then;

  /// Create a copy of UpdateCvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? newCvUrl = null,
  }) {
    return _then(UpdateCvSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == newCvUrl
          ? _self.newCvUrl
          : newCvUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateCvError implements UpdateCvState {
  const UpdateCvError(this.error);

  final String error;

  /// Create a copy of UpdateCvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCvErrorCopyWith<UpdateCvError> get copyWith =>
      _$UpdateCvErrorCopyWithImpl<UpdateCvError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateCvError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateCvState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateCvErrorCopyWith<$Res>
    implements $UpdateCvStateCopyWith<$Res> {
  factory $UpdateCvErrorCopyWith(
          UpdateCvError value, $Res Function(UpdateCvError) _then) =
      _$UpdateCvErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateCvErrorCopyWithImpl<$Res>
    implements $UpdateCvErrorCopyWith<$Res> {
  _$UpdateCvErrorCopyWithImpl(this._self, this._then);

  final UpdateCvError _self;
  final $Res Function(UpdateCvError) _then;

  /// Create a copy of UpdateCvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateCvError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
