// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skills_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillsJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SkillsJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SkillsJobsState()';
  }
}

/// @nodoc
class $SkillsJobsStateCopyWith<$Res> {
  $SkillsJobsStateCopyWith(
      SkillsJobsState _, $Res Function(SkillsJobsState) __);
}

/// @nodoc

class _Initial implements SkillsJobsState {
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
    return 'SkillsJobsState.initial()';
  }
}

/// @nodoc

class SkillsJobsLoading implements SkillsJobsState {
  const SkillsJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SkillsJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SkillsJobsState.loading()';
  }
}

/// @nodoc

class SkillsJobsSuccess implements SkillsJobsState {
  const SkillsJobsSuccess(this.response);

  final SkillsJobsResponse response;

  /// Create a copy of SkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillsJobsSuccessCopyWith<SkillsJobsSuccess> get copyWith =>
      _$SkillsJobsSuccessCopyWithImpl<SkillsJobsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillsJobsSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @override
  String toString() {
    return 'SkillsJobsState.success(response: $response)';
  }
}

/// @nodoc
abstract mixin class $SkillsJobsSuccessCopyWith<$Res>
    implements $SkillsJobsStateCopyWith<$Res> {
  factory $SkillsJobsSuccessCopyWith(
          SkillsJobsSuccess value, $Res Function(SkillsJobsSuccess) _then) =
      _$SkillsJobsSuccessCopyWithImpl;
  @useResult
  $Res call({SkillsJobsResponse response});

  $SkillsJobsResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$SkillsJobsSuccessCopyWithImpl<$Res>
    implements $SkillsJobsSuccessCopyWith<$Res> {
  _$SkillsJobsSuccessCopyWithImpl(this._self, this._then);

  final SkillsJobsSuccess _self;
  final $Res Function(SkillsJobsSuccess) _then;

  /// Create a copy of SkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(SkillsJobsSuccess(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as SkillsJobsResponse,
    ));
  }

  /// Create a copy of SkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkillsJobsResponseCopyWith<$Res> get response {
    return $SkillsJobsResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc

class SkillsJobsError implements SkillsJobsState {
  const SkillsJobsError({required this.error});

  final String error;

  /// Create a copy of SkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillsJobsErrorCopyWith<SkillsJobsError> get copyWith =>
      _$SkillsJobsErrorCopyWithImpl<SkillsJobsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillsJobsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SkillsJobsState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SkillsJobsErrorCopyWith<$Res>
    implements $SkillsJobsStateCopyWith<$Res> {
  factory $SkillsJobsErrorCopyWith(
          SkillsJobsError value, $Res Function(SkillsJobsError) _then) =
      _$SkillsJobsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SkillsJobsErrorCopyWithImpl<$Res>
    implements $SkillsJobsErrorCopyWith<$Res> {
  _$SkillsJobsErrorCopyWithImpl(this._self, this._then);

  final SkillsJobsError _self;
  final $Res Function(SkillsJobsError) _then;

  /// Create a copy of SkillsJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SkillsJobsError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
