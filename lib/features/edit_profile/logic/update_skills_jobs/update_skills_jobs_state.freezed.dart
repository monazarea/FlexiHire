// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_skills_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSkillsJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateSkillsJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateSkillsJobsState()';
  }
}

/// @nodoc
class $UpdateSkillsJobsStateCopyWith<$Res> {
  $UpdateSkillsJobsStateCopyWith(
      UpdateSkillsJobsState _, $Res Function(UpdateSkillsJobsState) __);
}

/// @nodoc

class _Initial implements UpdateSkillsJobsState {
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
    return 'UpdateSkillsJobsState.initial()';
  }
}

/// @nodoc

class UpdateSkillsJobsLoading implements UpdateSkillsJobsState {
  const UpdateSkillsJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateSkillsJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateSkillsJobsState.loading()';
  }
}

/// @nodoc

class UpdateSkillsJobsSuccess implements UpdateSkillsJobsState {
  const UpdateSkillsJobsSuccess(
      {required this.message, required this.updatedUser});

  final String message;
  final JobSeekerProfileData updatedUser;

  /// Create a copy of UpdateSkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSkillsJobsSuccessCopyWith<UpdateSkillsJobsSuccess> get copyWith =>
      _$UpdateSkillsJobsSuccessCopyWithImpl<UpdateSkillsJobsSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSkillsJobsSuccess &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.updatedUser, updatedUser) ||
                other.updatedUser == updatedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, updatedUser);

  @override
  String toString() {
    return 'UpdateSkillsJobsState.success(message: $message, updatedUser: $updatedUser)';
  }
}

/// @nodoc
abstract mixin class $UpdateSkillsJobsSuccessCopyWith<$Res>
    implements $UpdateSkillsJobsStateCopyWith<$Res> {
  factory $UpdateSkillsJobsSuccessCopyWith(UpdateSkillsJobsSuccess value,
          $Res Function(UpdateSkillsJobsSuccess) _then) =
      _$UpdateSkillsJobsSuccessCopyWithImpl;
  @useResult
  $Res call({String message, JobSeekerProfileData updatedUser});
}

/// @nodoc
class _$UpdateSkillsJobsSuccessCopyWithImpl<$Res>
    implements $UpdateSkillsJobsSuccessCopyWith<$Res> {
  _$UpdateSkillsJobsSuccessCopyWithImpl(this._self, this._then);

  final UpdateSkillsJobsSuccess _self;
  final $Res Function(UpdateSkillsJobsSuccess) _then;

  /// Create a copy of UpdateSkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? updatedUser = null,
  }) {
    return _then(UpdateSkillsJobsSuccess(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      updatedUser: null == updatedUser
          ? _self.updatedUser
          : updatedUser // ignore: cast_nullable_to_non_nullable
              as JobSeekerProfileData,
    ));
  }
}

/// @nodoc

class UpdateSkillsJobsError implements UpdateSkillsJobsState {
  const UpdateSkillsJobsError(this.error);

  final String error;

  /// Create a copy of UpdateSkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSkillsJobsErrorCopyWith<UpdateSkillsJobsError> get copyWith =>
      _$UpdateSkillsJobsErrorCopyWithImpl<UpdateSkillsJobsError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSkillsJobsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateSkillsJobsState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $UpdateSkillsJobsErrorCopyWith<$Res>
    implements $UpdateSkillsJobsStateCopyWith<$Res> {
  factory $UpdateSkillsJobsErrorCopyWith(UpdateSkillsJobsError value,
          $Res Function(UpdateSkillsJobsError) _then) =
      _$UpdateSkillsJobsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UpdateSkillsJobsErrorCopyWithImpl<$Res>
    implements $UpdateSkillsJobsErrorCopyWith<$Res> {
  _$UpdateSkillsJobsErrorCopyWithImpl(this._self, this._then);

  final UpdateSkillsJobsError _self;
  final $Res Function(UpdateSkillsJobsError) _then;

  /// Create a copy of UpdateSkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(UpdateSkillsJobsError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
