// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedJobsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SavedJobsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SavedJobsState()';
  }
}

/// @nodoc
class $SavedJobsStateCopyWith<$Res> {
  $SavedJobsStateCopyWith(SavedJobsState _, $Res Function(SavedJobsState) __);
}

/// @nodoc

class _Initial implements SavedJobsState {
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
    return 'SavedJobsState.initial()';
  }
}

/// @nodoc

class SavedJobsLoading implements SavedJobsState {
  const SavedJobsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SavedJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SavedJobsState.loading()';
  }
}

/// @nodoc

class SavedJobsSuccess implements SavedJobsState {
  const SavedJobsSuccess(
      {required final List<SavedJobItemModel> savedJobs,
      required this.hasReachedMax,
      this.isLoadingMore = false})
      : _savedJobs = savedJobs;

  final List<SavedJobItemModel> _savedJobs;
  List<SavedJobItemModel> get savedJobs {
    if (_savedJobs is EqualUnmodifiableListView) return _savedJobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedJobs);
  }

  final bool hasReachedMax;
  @JsonKey()
  final bool isLoadingMore;

  /// Create a copy of SavedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SavedJobsSuccessCopyWith<SavedJobsSuccess> get copyWith =>
      _$SavedJobsSuccessCopyWithImpl<SavedJobsSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavedJobsSuccess &&
            const DeepCollectionEquality()
                .equals(other._savedJobs, _savedJobs) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_savedJobs),
      hasReachedMax,
      isLoadingMore);

  @override
  String toString() {
    return 'SavedJobsState.success(savedJobs: $savedJobs, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
  }
}

/// @nodoc
abstract mixin class $SavedJobsSuccessCopyWith<$Res>
    implements $SavedJobsStateCopyWith<$Res> {
  factory $SavedJobsSuccessCopyWith(
          SavedJobsSuccess value, $Res Function(SavedJobsSuccess) _then) =
      _$SavedJobsSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<SavedJobItemModel> savedJobs,
      bool hasReachedMax,
      bool isLoadingMore});
}

/// @nodoc
class _$SavedJobsSuccessCopyWithImpl<$Res>
    implements $SavedJobsSuccessCopyWith<$Res> {
  _$SavedJobsSuccessCopyWithImpl(this._self, this._then);

  final SavedJobsSuccess _self;
  final $Res Function(SavedJobsSuccess) _then;

  /// Create a copy of SavedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? savedJobs = null,
    Object? hasReachedMax = null,
    Object? isLoadingMore = null,
  }) {
    return _then(SavedJobsSuccess(
      savedJobs: null == savedJobs
          ? _self._savedJobs
          : savedJobs // ignore: cast_nullable_to_non_nullable
              as List<SavedJobItemModel>,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SavedJobsError implements SavedJobsState {
  const SavedJobsError({required this.error});

  final String error;

  /// Create a copy of SavedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SavedJobsErrorCopyWith<SavedJobsError> get copyWith =>
      _$SavedJobsErrorCopyWithImpl<SavedJobsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavedJobsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SavedJobsState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SavedJobsErrorCopyWith<$Res>
    implements $SavedJobsStateCopyWith<$Res> {
  factory $SavedJobsErrorCopyWith(
          SavedJobsError value, $Res Function(SavedJobsError) _then) =
      _$SavedJobsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$SavedJobsErrorCopyWithImpl<$Res>
    implements $SavedJobsErrorCopyWith<$Res> {
  _$SavedJobsErrorCopyWithImpl(this._self, this._then);

  final SavedJobsError _self;
  final $Res Function(SavedJobsError) _then;

  /// Create a copy of SavedJobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SavedJobsError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
