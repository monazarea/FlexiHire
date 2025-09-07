// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_company_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateCompanyState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateCompanyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateCompanyState()';
  }
}

/// @nodoc
class $RateCompanyStateCopyWith<$Res> {
  $RateCompanyStateCopyWith(
      RateCompanyState _, $Res Function(RateCompanyState) __);
}

/// @nodoc

class _RateCompanyInitial implements RateCompanyState {
  const _RateCompanyInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RateCompanyInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateCompanyState.initial()';
  }
}

/// @nodoc

class RateCompanySubmitting implements RateCompanyState {
  const RateCompanySubmitting();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateCompanySubmitting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateCompanyState.submitting()';
  }
}

/// @nodoc

class RateCompanySuccess implements RateCompanyState {
  const RateCompanySuccess(this.response);

  final RateCompanyResponse response;

  /// Create a copy of RateCompanyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateCompanySuccessCopyWith<RateCompanySuccess> get copyWith =>
      _$RateCompanySuccessCopyWithImpl<RateCompanySuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateCompanySuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @override
  String toString() {
    return 'RateCompanyState.success(response: $response)';
  }
}

/// @nodoc
abstract mixin class $RateCompanySuccessCopyWith<$Res>
    implements $RateCompanyStateCopyWith<$Res> {
  factory $RateCompanySuccessCopyWith(
          RateCompanySuccess value, $Res Function(RateCompanySuccess) _then) =
      _$RateCompanySuccessCopyWithImpl;
  @useResult
  $Res call({RateCompanyResponse response});
}

/// @nodoc
class _$RateCompanySuccessCopyWithImpl<$Res>
    implements $RateCompanySuccessCopyWith<$Res> {
  _$RateCompanySuccessCopyWithImpl(this._self, this._then);

  final RateCompanySuccess _self;
  final $Res Function(RateCompanySuccess) _then;

  /// Create a copy of RateCompanyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(RateCompanySuccess(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as RateCompanyResponse,
    ));
  }
}

/// @nodoc

class RateCompanyError implements RateCompanyState {
  const RateCompanyError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of RateCompanyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateCompanyErrorCopyWith<RateCompanyError> get copyWith =>
      _$RateCompanyErrorCopyWithImpl<RateCompanyError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateCompanyError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'RateCompanyState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $RateCompanyErrorCopyWith<$Res>
    implements $RateCompanyStateCopyWith<$Res> {
  factory $RateCompanyErrorCopyWith(
          RateCompanyError value, $Res Function(RateCompanyError) _then) =
      _$RateCompanyErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$RateCompanyErrorCopyWithImpl<$Res>
    implements $RateCompanyErrorCopyWith<$Res> {
  _$RateCompanyErrorCopyWithImpl(this._self, this._then);

  final RateCompanyError _self;
  final $Res Function(RateCompanyError) _then;

  /// Create a copy of RateCompanyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(RateCompanyError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
