// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogoutState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LogoutState()';
  }
}

/// @nodoc
class $LogoutStateCopyWith<$Res> {
  $LogoutStateCopyWith(LogoutState _, $Res Function(LogoutState) __);
}

/// @nodoc

class _LogoutInitial implements LogoutState {
  const _LogoutInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogoutInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LogoutState.initial()';
  }
}

/// @nodoc

class LogoutLoading implements LogoutState {
  const LogoutLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LogoutState.loading()';
  }
}

/// @nodoc

class LogoutSuccess implements LogoutState {
  const LogoutSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LogoutState.success()';
  }
}

/// @nodoc

class LogoutError implements LogoutState {
  const LogoutError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoutError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'LogoutState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $LogoutErrorCopyWith<$Res>
    implements $LogoutStateCopyWith<$Res> {
  factory $LogoutErrorCopyWith(
          LogoutError value, $Res Function(LogoutError) _then) =
      _$LogoutErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(this._self, this._then);

  final LogoutError _self;
  final $Res Function(LogoutError) _then;

  /// Create a copy of LogoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(LogoutError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
