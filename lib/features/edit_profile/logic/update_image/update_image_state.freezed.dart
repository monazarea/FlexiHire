// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateImageState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateImageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateImageState()';
  }
}

/// @nodoc
class $UpdateImageStateCopyWith<$Res> {
  $UpdateImageStateCopyWith(
      UpdateImageState _, $Res Function(UpdateImageState) __);
}

/// @nodoc

class _Initial implements UpdateImageState {
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
    return 'UpdateImageState.initial()';
  }
}

/// @nodoc

class ProfileImageLoading implements UpdateImageState {
  const ProfileImageLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileImageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateImageState.profileImageLoading()';
  }
}

/// @nodoc

class ProfileImageSuccess implements UpdateImageState {
  const ProfileImageSuccess(this.newImageUrl, this.message);

  final String newImageUrl;
  final String message;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileImageSuccessCopyWith<ProfileImageSuccess> get copyWith =>
      _$ProfileImageSuccessCopyWithImpl<ProfileImageSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileImageSuccess &&
            (identical(other.newImageUrl, newImageUrl) ||
                other.newImageUrl == newImageUrl) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newImageUrl, message);

  @override
  String toString() {
    return 'UpdateImageState.profileImageSuccess(newImageUrl: $newImageUrl, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ProfileImageSuccessCopyWith<$Res>
    implements $UpdateImageStateCopyWith<$Res> {
  factory $ProfileImageSuccessCopyWith(
          ProfileImageSuccess value, $Res Function(ProfileImageSuccess) _then) =
      _$ProfileImageSuccessCopyWithImpl;
  @useResult
  $Res call({String newImageUrl, String message});
}

/// @nodoc
class _$ProfileImageSuccessCopyWithImpl<$Res>
    implements $ProfileImageSuccessCopyWith<$Res> {
  _$ProfileImageSuccessCopyWithImpl(this._self, this._then);

  final ProfileImageSuccess _self;
  final $Res Function(ProfileImageSuccess) _then;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newImageUrl = null,
    Object? message = null,
  }) {
    return _then(ProfileImageSuccess(
      null == newImageUrl
          ? _self.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ProfileImageError implements UpdateImageState {
  const ProfileImageError(this.error);

  final String error;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileImageErrorCopyWith<ProfileImageError> get copyWith =>
      _$ProfileImageErrorCopyWithImpl<ProfileImageError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileImageError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateImageState.profileImageError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ProfileImageErrorCopyWith<$Res>
    implements $UpdateImageStateCopyWith<$Res> {
  factory $ProfileImageErrorCopyWith(
          ProfileImageError value, $Res Function(ProfileImageError) _then) =
      _$ProfileImageErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ProfileImageErrorCopyWithImpl<$Res>
    implements $ProfileImageErrorCopyWith<$Res> {
  _$ProfileImageErrorCopyWithImpl(this._self, this._then);

  final ProfileImageError _self;
  final $Res Function(ProfileImageError) _then;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ProfileImageError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CoverImageLoading implements UpdateImageState {
  const CoverImageLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoverImageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateImageState.coverImageLoading()';
  }
}

/// @nodoc

class CoverImageSuccess implements UpdateImageState {
  const CoverImageSuccess(this.newImageUrl, this.message);

  final String newImageUrl;
  final String message;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoverImageSuccessCopyWith<CoverImageSuccess> get copyWith =>
      _$CoverImageSuccessCopyWithImpl<CoverImageSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoverImageSuccess &&
            (identical(other.newImageUrl, newImageUrl) ||
                other.newImageUrl == newImageUrl) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newImageUrl, message);

  @override
  String toString() {
    return 'UpdateImageState.coverImageSuccess(newImageUrl: $newImageUrl, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CoverImageSuccessCopyWith<$Res>
    implements $UpdateImageStateCopyWith<$Res> {
  factory $CoverImageSuccessCopyWith(
          CoverImageSuccess value, $Res Function(CoverImageSuccess) _then) =
      _$CoverImageSuccessCopyWithImpl;
  @useResult
  $Res call({String newImageUrl, String message});
}

/// @nodoc
class _$CoverImageSuccessCopyWithImpl<$Res>
    implements $CoverImageSuccessCopyWith<$Res> {
  _$CoverImageSuccessCopyWithImpl(this._self, this._then);

  final CoverImageSuccess _self;
  final $Res Function(CoverImageSuccess) _then;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newImageUrl = null,
    Object? message = null,
  }) {
    return _then(CoverImageSuccess(
      null == newImageUrl
          ? _self.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CoverImageError implements UpdateImageState {
  const CoverImageError(this.error);

  final String error;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoverImageErrorCopyWith<CoverImageError> get copyWith =>
      _$CoverImageErrorCopyWithImpl<CoverImageError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoverImageError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'UpdateImageState.coverImageError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CoverImageErrorCopyWith<$Res>
    implements $UpdateImageStateCopyWith<$Res> {
  factory $CoverImageErrorCopyWith(
          CoverImageError value, $Res Function(CoverImageError) _then) =
      _$CoverImageErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$CoverImageErrorCopyWithImpl<$Res>
    implements $CoverImageErrorCopyWith<$Res> {
  _$CoverImageErrorCopyWithImpl(this._self, this._then);

  final CoverImageError _self;
  final $Res Function(CoverImageError) _then;

  /// Create a copy of UpdateImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(CoverImageError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
