// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyProfileState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompanyProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompanyProfileState()';
  }
}

/// @nodoc
class $CompanyProfileStateCopyWith<$Res> {
  $CompanyProfileStateCopyWith(
      CompanyProfileState _, $Res Function(CompanyProfileState) __);
}

/// @nodoc

class _Initial implements CompanyProfileState {
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
    return 'CompanyProfileState.initial()';
  }
}

/// @nodoc

class CompanyProfileLoading implements CompanyProfileState {
  const CompanyProfileLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompanyProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompanyProfileState.loading()';
  }
}

/// @nodoc

class CompanyProfileSuccess implements CompanyProfileState {
  const CompanyProfileSuccess(this.data);

  final CompanyProfileResponse data;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyProfileSuccessCopyWith<CompanyProfileSuccess> get copyWith =>
      _$CompanyProfileSuccessCopyWithImpl<CompanyProfileSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyProfileSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'CompanyProfileState.success(data: $data)';
  }
}

/// @nodoc
abstract mixin class $CompanyProfileSuccessCopyWith<$Res>
    implements $CompanyProfileStateCopyWith<$Res> {
  factory $CompanyProfileSuccessCopyWith(CompanyProfileSuccess value,
          $Res Function(CompanyProfileSuccess) _then) =
      _$CompanyProfileSuccessCopyWithImpl;
  @useResult
  $Res call({CompanyProfileResponse data});

  $CompanyProfileResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$CompanyProfileSuccessCopyWithImpl<$Res>
    implements $CompanyProfileSuccessCopyWith<$Res> {
  _$CompanyProfileSuccessCopyWithImpl(this._self, this._then);

  final CompanyProfileSuccess _self;
  final $Res Function(CompanyProfileSuccess) _then;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(CompanyProfileSuccess(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyProfileResponse,
    ));
  }

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyProfileResponseCopyWith<$Res> get data {
    return $CompanyProfileResponseCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc

class CompanyProfileError implements CompanyProfileState {
  const CompanyProfileError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyProfileErrorCopyWith<CompanyProfileError> get copyWith =>
      _$CompanyProfileErrorCopyWithImpl<CompanyProfileError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyProfileError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'CompanyProfileState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $CompanyProfileErrorCopyWith<$Res>
    implements $CompanyProfileStateCopyWith<$Res> {
  factory $CompanyProfileErrorCopyWith(
          CompanyProfileError value, $Res Function(CompanyProfileError) _then) =
      _$CompanyProfileErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$CompanyProfileErrorCopyWithImpl<$Res>
    implements $CompanyProfileErrorCopyWith<$Res> {
  _$CompanyProfileErrorCopyWithImpl(this._self, this._then);

  final CompanyProfileError _self;
  final $Res Function(CompanyProfileError) _then;

  /// Create a copy of CompanyProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(CompanyProfileError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
