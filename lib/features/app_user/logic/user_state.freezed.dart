// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState()';
  }
}

/// @nodoc
class $UserStateCopyWith<$Res> {
  $UserStateCopyWith(UserState _, $Res Function(UserState) __);
}

/// @nodoc

class _UserInitial implements UserState {
  const _UserInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState.initial()';
  }
}

/// @nodoc

class UserSuccess implements UserState {
  const UserSuccess(this.userData);

  final UserModel userData;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSuccessCopyWith<UserSuccess> get copyWith =>
      _$UserSuccessCopyWithImpl<UserSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSuccess &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @override
  String toString() {
    return 'UserState.success(userData: $userData)';
  }
}

/// @nodoc
abstract mixin class $UserSuccessCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory $UserSuccessCopyWith(
          UserSuccess value, $Res Function(UserSuccess) _then) =
      _$UserSuccessCopyWithImpl;
  @useResult
  $Res call({UserModel userData});
}

/// @nodoc
class _$UserSuccessCopyWithImpl<$Res> implements $UserSuccessCopyWith<$Res> {
  _$UserSuccessCopyWithImpl(this._self, this._then);

  final UserSuccess _self;
  final $Res Function(UserSuccess) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userData = null,
  }) {
    return _then(UserSuccess(
      null == userData
          ? _self.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

// dart format on
