// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowState {
// هل الشركة متابَعة حالياً أم لا
  bool get isFollowing; // حالة آخر عملية ضغط على الزر
  FollowRequestStatus get status; // رسالة النجاح أو الخطأ الاختيارية
  String? get successMessage;
  ApiErrorModel? get error;

  /// Create a copy of FollowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowStateCopyWith<FollowState> get copyWith =>
      _$FollowStateCopyWithImpl<FollowState>(this as FollowState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowState &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFollowing, status, successMessage, error);

  @override
  String toString() {
    return 'FollowState(isFollowing: $isFollowing, status: $status, successMessage: $successMessage, error: $error)';
  }
}

/// @nodoc
abstract mixin class $FollowStateCopyWith<$Res> {
  factory $FollowStateCopyWith(
          FollowState value, $Res Function(FollowState) _then) =
      _$FollowStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isFollowing,
      FollowRequestStatus status,
      String? successMessage,
      ApiErrorModel? error});
}

/// @nodoc
class _$FollowStateCopyWithImpl<$Res> implements $FollowStateCopyWith<$Res> {
  _$FollowStateCopyWithImpl(this._self, this._then);

  final FollowState _self;
  final $Res Function(FollowState) _then;

  /// Create a copy of FollowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFollowing = null,
    Object? status = null,
    Object? successMessage = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      isFollowing: null == isFollowing
          ? _self.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FollowRequestStatus,
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

class _FollowState implements FollowState {
  const _FollowState(
      {required this.isFollowing,
      this.status = FollowRequestStatus.initial,
      this.successMessage,
      this.error});

// هل الشركة متابَعة حالياً أم لا
  @override
  final bool isFollowing;
// حالة آخر عملية ضغط على الزر
  @override
  @JsonKey()
  final FollowRequestStatus status;
// رسالة النجاح أو الخطأ الاختيارية
  @override
  final String? successMessage;
  @override
  final ApiErrorModel? error;

  /// Create a copy of FollowState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FollowStateCopyWith<_FollowState> get copyWith =>
      __$FollowStateCopyWithImpl<_FollowState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowState &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFollowing, status, successMessage, error);

  @override
  String toString() {
    return 'FollowState(isFollowing: $isFollowing, status: $status, successMessage: $successMessage, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$FollowStateCopyWith<$Res>
    implements $FollowStateCopyWith<$Res> {
  factory _$FollowStateCopyWith(
          _FollowState value, $Res Function(_FollowState) _then) =
      __$FollowStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isFollowing,
      FollowRequestStatus status,
      String? successMessage,
      ApiErrorModel? error});
}

/// @nodoc
class __$FollowStateCopyWithImpl<$Res> implements _$FollowStateCopyWith<$Res> {
  __$FollowStateCopyWithImpl(this._self, this._then);

  final _FollowState _self;
  final $Res Function(_FollowState) _then;

  /// Create a copy of FollowState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isFollowing = null,
    Object? status = null,
    Object? successMessage = freezed,
    Object? error = freezed,
  }) {
    return _then(_FollowState(
      isFollowing: null == isFollowing
          ? _self.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FollowRequestStatus,
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
