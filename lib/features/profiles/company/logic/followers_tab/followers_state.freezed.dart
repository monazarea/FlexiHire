// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowersState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FollowersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FollowersState()';
  }
}

/// @nodoc
class $FollowersStateCopyWith<$Res> {
  $FollowersStateCopyWith(FollowersState _, $Res Function(FollowersState) __);
}

/// @nodoc

class _FollowersInitial implements FollowersState {
  const _FollowersInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FollowersInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FollowersState.initial()';
  }
}

/// @nodoc

class FollowersLoading implements FollowersState {
  const FollowersLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FollowersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FollowersState.loading()';
  }
}

/// @nodoc

class FollowersSuccess implements FollowersState {
  const FollowersSuccess(
      {required final List<JobSeekerListItemModel> followers,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _followers = followers;

  final List<JobSeekerListItemModel> _followers;
  List<JobSeekerListItemModel> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of FollowersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowersSuccessCopyWith<FollowersSuccess> get copyWith =>
      _$FollowersSuccessCopyWithImpl<FollowersSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowersSuccess &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_followers),
      isLoadingMore,
      hasReachedMax);

  @override
  String toString() {
    return 'FollowersState.success(followers: $followers, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $FollowersSuccessCopyWith<$Res>
    implements $FollowersStateCopyWith<$Res> {
  factory $FollowersSuccessCopyWith(
          FollowersSuccess value, $Res Function(FollowersSuccess) _then) =
      _$FollowersSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<JobSeekerListItemModel> followers,
      bool isLoadingMore,
      bool hasReachedMax});
}

/// @nodoc
class _$FollowersSuccessCopyWithImpl<$Res>
    implements $FollowersSuccessCopyWith<$Res> {
  _$FollowersSuccessCopyWithImpl(this._self, this._then);

  final FollowersSuccess _self;
  final $Res Function(FollowersSuccess) _then;

  /// Create a copy of FollowersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? followers = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(FollowersSuccess(
      followers: null == followers
          ? _self._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<JobSeekerListItemModel>,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class FollowersError implements FollowersState {
  const FollowersError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of FollowersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowersErrorCopyWith<FollowersError> get copyWith =>
      _$FollowersErrorCopyWithImpl<FollowersError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowersError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'FollowersState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $FollowersErrorCopyWith<$Res>
    implements $FollowersStateCopyWith<$Res> {
  factory $FollowersErrorCopyWith(
          FollowersError value, $Res Function(FollowersError) _then) =
      _$FollowersErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$FollowersErrorCopyWithImpl<$Res>
    implements $FollowersErrorCopyWith<$Res> {
  _$FollowersErrorCopyWithImpl(this._self, this._then);

  final FollowersError _self;
  final $Res Function(FollowersError) _then;

  /// Create a copy of FollowersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(FollowersError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
