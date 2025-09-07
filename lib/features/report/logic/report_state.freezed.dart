// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportState()';
  }
}

/// @nodoc
class $ReportStateCopyWith<$Res> {
  $ReportStateCopyWith(ReportState _, $Res Function(ReportState) __);
}

/// @nodoc

class _Initial implements ReportState {
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
    return 'ReportState.initial()';
  }
}

/// @nodoc

class ImagesPicked implements ReportState {
  const ImagesPicked(final List<File> images) : _images = images;

  final List<File> _images;
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImagesPickedCopyWith<ImagesPicked> get copyWith =>
      _$ImagesPickedCopyWithImpl<ImagesPicked>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImagesPicked &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'ReportState.imagesPicked(images: $images)';
  }
}

/// @nodoc
abstract mixin class $ImagesPickedCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ImagesPickedCopyWith(
          ImagesPicked value, $Res Function(ImagesPicked) _then) =
      _$ImagesPickedCopyWithImpl;
  @useResult
  $Res call({List<File> images});
}

/// @nodoc
class _$ImagesPickedCopyWithImpl<$Res> implements $ImagesPickedCopyWith<$Res> {
  _$ImagesPickedCopyWithImpl(this._self, this._then);

  final ImagesPicked _self;
  final $Res Function(ImagesPicked) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? images = null,
  }) {
    return _then(ImagesPicked(
      null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class ReportLoading implements ReportState {
  const ReportLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportState.loading()';
  }
}

/// @nodoc

class ReportSuccess implements ReportState {
  const ReportSuccess(this.message);

  final String message;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportSuccessCopyWith<ReportSuccess> get copyWith =>
      _$ReportSuccessCopyWithImpl<ReportSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ReportState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ReportSuccessCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ReportSuccessCopyWith(
          ReportSuccess value, $Res Function(ReportSuccess) _then) =
      _$ReportSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ReportSuccessCopyWithImpl<$Res>
    implements $ReportSuccessCopyWith<$Res> {
  _$ReportSuccessCopyWithImpl(this._self, this._then);

  final ReportSuccess _self;
  final $Res Function(ReportSuccess) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ReportSuccess(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ReportError implements ReportState {
  const ReportError(this.error);

  final String error;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportErrorCopyWith<ReportError> get copyWith =>
      _$ReportErrorCopyWithImpl<ReportError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ReportState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ReportErrorCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ReportErrorCopyWith(
          ReportError value, $Res Function(ReportError) _then) =
      _$ReportErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ReportErrorCopyWithImpl<$Res> implements $ReportErrorCopyWith<$Res> {
  _$ReportErrorCopyWithImpl(this._self, this._then);

  final ReportError _self;
  final $Res Function(ReportError) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ReportError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
