// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_seeker_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobSeekerProfileState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobSeekerProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobSeekerProfileState()';
  }
}

/// @nodoc
class $JobSeekerProfileStateCopyWith<$Res> {
  $JobSeekerProfileStateCopyWith(
      JobSeekerProfileState _, $Res Function(JobSeekerProfileState) __);
}

/// @nodoc

class _Initial implements JobSeekerProfileState {
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
    return 'JobSeekerProfileState.initial()';
  }
}

/// @nodoc

class GetProfileLoading implements JobSeekerProfileState {
  const GetProfileLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobSeekerProfileState.getProfileLoading()';
  }
}

/// @nodoc

class GetProfileSuccess implements JobSeekerProfileState {
  const GetProfileSuccess(this.userData);

  final JobSeekerProfileData userData;

  /// Create a copy of JobSeekerProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProfileSuccessCopyWith<GetProfileSuccess> get copyWith =>
      _$GetProfileSuccessCopyWithImpl<GetProfileSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProfileSuccess &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @override
  String toString() {
    return 'JobSeekerProfileState.getProfileSuccess(userData: $userData)';
  }
}

/// @nodoc
abstract mixin class $GetProfileSuccessCopyWith<$Res>
    implements $JobSeekerProfileStateCopyWith<$Res> {
  factory $GetProfileSuccessCopyWith(
          GetProfileSuccess value, $Res Function(GetProfileSuccess) _then) =
      _$GetProfileSuccessCopyWithImpl;
  @useResult
  $Res call({JobSeekerProfileData userData});
}

/// @nodoc
class _$GetProfileSuccessCopyWithImpl<$Res>
    implements $GetProfileSuccessCopyWith<$Res> {
  _$GetProfileSuccessCopyWithImpl(this._self, this._then);

  final GetProfileSuccess _self;
  final $Res Function(GetProfileSuccess) _then;

  /// Create a copy of JobSeekerProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userData = null,
  }) {
    return _then(GetProfileSuccess(
      null == userData
          ? _self.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as JobSeekerProfileData,
    ));
  }
}

/// @nodoc

class GetProfileError implements JobSeekerProfileState {
  const GetProfileError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of JobSeekerProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetProfileErrorCopyWith<GetProfileError> get copyWith =>
      _$GetProfileErrorCopyWithImpl<GetProfileError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetProfileError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'JobSeekerProfileState.getProfileError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $GetProfileErrorCopyWith<$Res>
    implements $JobSeekerProfileStateCopyWith<$Res> {
  factory $GetProfileErrorCopyWith(
          GetProfileError value, $Res Function(GetProfileError) _then) =
      _$GetProfileErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$GetProfileErrorCopyWithImpl<$Res>
    implements $GetProfileErrorCopyWith<$Res> {
  _$GetProfileErrorCopyWithImpl(this._self, this._then);

  final GetProfileError _self;
  final $Res Function(GetProfileError) _then;

  /// Create a copy of JobSeekerProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(GetProfileError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
