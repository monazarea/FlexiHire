// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaveJobState {
  bool get isSaved;
  SaveJobStatus get status;
  String? get successMessage;
  ApiErrorModel? get error;

  /// Create a copy of SaveJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveJobStateCopyWith<SaveJobState> get copyWith =>
      _$SaveJobStateCopyWithImpl<SaveJobState>(
          this as SaveJobState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveJobState &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSaved, status, successMessage, error);

  @override
  String toString() {
    return 'SaveJobState(isSaved: $isSaved, status: $status, successMessage: $successMessage, error: $error)';
  }
}

/// @nodoc
abstract mixin class $SaveJobStateCopyWith<$Res> {
  factory $SaveJobStateCopyWith(
          SaveJobState value, $Res Function(SaveJobState) _then) =
      _$SaveJobStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isSaved,
      SaveJobStatus status,
      String? successMessage,
      ApiErrorModel? error});
}

/// @nodoc
class _$SaveJobStateCopyWithImpl<$Res> implements $SaveJobStateCopyWith<$Res> {
  _$SaveJobStateCopyWithImpl(this._self, this._then);

  final SaveJobState _self;
  final $Res Function(SaveJobState) _then;

  /// Create a copy of SaveJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaved = null,
    Object? status = null,
    Object? successMessage = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      isSaved: null == isSaved
          ? _self.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SaveJobStatus,
      successMessage: freezed == successMessage
          ? _self.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _SaveJobState implements SaveJobState {
  const _SaveJobState(
      {required this.isSaved,
      this.status = SaveJobStatus.initial,
      this.successMessage,
      this.error});

  @override
  final bool isSaved;
  @override
  @JsonKey()
  final SaveJobStatus status;
  @override
  final String? successMessage;
  @override
  final ApiErrorModel? error;

  /// Create a copy of SaveJobState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaveJobStateCopyWith<_SaveJobState> get copyWith =>
      __$SaveJobStateCopyWithImpl<_SaveJobState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveJobState &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSaved, status, successMessage, error);

  @override
  String toString() {
    return 'SaveJobState(isSaved: $isSaved, status: $status, successMessage: $successMessage, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$SaveJobStateCopyWith<$Res>
    implements $SaveJobStateCopyWith<$Res> {
  factory _$SaveJobStateCopyWith(
          _SaveJobState value, $Res Function(_SaveJobState) _then) =
      __$SaveJobStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isSaved,
      SaveJobStatus status,
      String? successMessage,
      ApiErrorModel? error});
}

/// @nodoc
class __$SaveJobStateCopyWithImpl<$Res>
    implements _$SaveJobStateCopyWith<$Res> {
  __$SaveJobStateCopyWithImpl(this._self, this._then);

  final _SaveJobState _self;
  final $Res Function(_SaveJobState) _then;

  /// Create a copy of SaveJobState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSaved = null,
    Object? status = null,
    Object? successMessage = freezed,
    Object? error = freezed,
  }) {
    return _then(_SaveJobState(
      isSaved: null == isSaved
          ? _self.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SaveJobStatus,
      successMessage: freezed == successMessage
          ? _self.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

// dart format on
