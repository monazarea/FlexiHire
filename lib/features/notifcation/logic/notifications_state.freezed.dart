// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationsState()';
  }
}

/// @nodoc
class $NotificationsStateCopyWith<$Res> {
  $NotificationsStateCopyWith(
      NotificationsState _, $Res Function(NotificationsState) __);
}

/// @nodoc

class Initial implements NotificationsState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }
}

/// @nodoc

class NotificationsLoading implements NotificationsState {
  const NotificationsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationsState.notificationsLoading()';
  }
}

/// @nodoc

class NotificationsSuccess implements NotificationsState {
  const NotificationsSuccess(
      {required final List<NotificationModel> notifications,
      required this.unreadCount})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final int unreadCount;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationsSuccessCopyWith<NotificationsSuccess> get copyWith =>
      _$NotificationsSuccessCopyWithImpl<NotificationsSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationsSuccess &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notifications), unreadCount);

  @override
  String toString() {
    return 'NotificationsState.notificationsSuccess(notifications: $notifications, unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class $NotificationsSuccessCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsSuccessCopyWith(NotificationsSuccess value,
          $Res Function(NotificationsSuccess) _then) =
      _$NotificationsSuccessCopyWithImpl;
  @useResult
  $Res call({List<NotificationModel> notifications, int unreadCount});
}

/// @nodoc
class _$NotificationsSuccessCopyWithImpl<$Res>
    implements $NotificationsSuccessCopyWith<$Res> {
  _$NotificationsSuccessCopyWithImpl(this._self, this._then);

  final NotificationsSuccess _self;
  final $Res Function(NotificationsSuccess) _then;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notifications = null,
    Object? unreadCount = null,
  }) {
    return _then(NotificationsSuccess(
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class NotificationsError implements NotificationsState {
  const NotificationsError({required this.error});

  final String error;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationsErrorCopyWith<NotificationsError> get copyWith =>
      _$NotificationsErrorCopyWithImpl<NotificationsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'NotificationsState.notificationsError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $NotificationsErrorCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsErrorCopyWith(
          NotificationsError value, $Res Function(NotificationsError) _then) =
      _$NotificationsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$NotificationsErrorCopyWithImpl<$Res>
    implements $NotificationsErrorCopyWith<$Res> {
  _$NotificationsErrorCopyWithImpl(this._self, this._then);

  final NotificationsError _self;
  final $Res Function(NotificationsError) _then;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(NotificationsError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
