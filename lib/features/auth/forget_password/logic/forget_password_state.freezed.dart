// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgetPasswordState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgetPasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgetPasswordState()';
  }
}

/// @nodoc
class $ForgetPasswordStateCopyWith<$Res> {
  $ForgetPasswordStateCopyWith(
      ForgetPasswordState _, $Res Function(ForgetPasswordState) __);
}

/// @nodoc

class _Initial implements ForgetPasswordState {
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
    return 'ForgetPasswordState.initial()';
  }
}

/// @nodoc

class ForgetLoading implements ForgetPasswordState {
  const ForgetLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgetLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgetPasswordState.forgetLoading()';
  }
}

/// @nodoc

class ForgetSuccess implements ForgetPasswordState {
  const ForgetSuccess(this.message);

  final String message;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgetSuccessCopyWith<ForgetSuccess> get copyWith =>
      _$ForgetSuccessCopyWithImpl<ForgetSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgetSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ForgetPasswordState.forgetSuccess(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ForgetSuccessCopyWith<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetSuccessCopyWith(
          ForgetSuccess value, $Res Function(ForgetSuccess) _then) =
      _$ForgetSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ForgetSuccessCopyWithImpl<$Res>
    implements $ForgetSuccessCopyWith<$Res> {
  _$ForgetSuccessCopyWithImpl(this._self, this._then);

  final ForgetSuccess _self;
  final $Res Function(ForgetSuccess) _then;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ForgetSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ForgetError implements ForgetPasswordState {
  const ForgetError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgetErrorCopyWith<ForgetError> get copyWith =>
      _$ForgetErrorCopyWithImpl<ForgetError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgetError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'ForgetPasswordState.forgetError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $ForgetErrorCopyWith<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetErrorCopyWith(
          ForgetError value, $Res Function(ForgetError) _then) =
      _$ForgetErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$ForgetErrorCopyWithImpl<$Res> implements $ForgetErrorCopyWith<$Res> {
  _$ForgetErrorCopyWithImpl(this._self, this._then);

  final ForgetError _self;
  final $Res Function(ForgetError) _then;

  /// Create a copy of ForgetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(ForgetError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
