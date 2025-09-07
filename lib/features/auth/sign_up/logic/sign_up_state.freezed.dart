// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState<$T>()';
  }
}

/// @nodoc
class $SignUpStateCopyWith<T, $Res> {
  $SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}

/// @nodoc

class _Initial<T> implements SignUpState<T> {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState<$T>.initial()';
  }
}

/// @nodoc

class SignUpLoading<T> implements SignUpState<T> {
  const SignUpLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState<$T>.signupLoading()';
  }
}

/// @nodoc

class SignUpSuccess<T> implements SignUpState<T> {
  const SignUpSuccess(this.data);

  final T data;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpSuccessCopyWith<T, SignUpSuccess<T>> get copyWith =>
      _$SignUpSuccessCopyWithImpl<T, SignUpSuccess<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'SignUpState<$T>.signupSuccess(data: $data)';
  }
}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<T, $Res>
    implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpSuccessCopyWith(
          SignUpSuccess<T> value, $Res Function(SignUpSuccess<T>) _then) =
      _$SignUpSuccessCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$SignUpSuccessCopyWithImpl<T, $Res>
    implements $SignUpSuccessCopyWith<T, $Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess<T> _self;
  final $Res Function(SignUpSuccess<T>) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SignUpSuccess<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class SignUpError<T> implements SignUpState<T> {
  const SignUpError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpErrorCopyWith<T, SignUpError<T>> get copyWith =>
      _$SignUpErrorCopyWithImpl<T, SignUpError<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpError<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'SignUpState<$T>.signupError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $SignUpErrorCopyWith<T, $Res>
    implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpErrorCopyWith(
          SignUpError<T> value, $Res Function(SignUpError<T>) _then) =
      _$SignUpErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<T, $Res>
    implements $SignUpErrorCopyWith<T, $Res> {
  _$SignUpErrorCopyWithImpl(this._self, this._then);

  final SignUpError<T> _self;
  final $Res Function(SignUpError<T>) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(SignUpError<T>(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
