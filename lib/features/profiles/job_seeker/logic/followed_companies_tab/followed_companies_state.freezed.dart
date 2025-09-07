// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followed_companies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowedCompaniesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FollowedCompaniesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FollowedCompaniesState()';
  }
}

/// @nodoc
class $FollowedCompaniesStateCopyWith<$Res> {
  $FollowedCompaniesStateCopyWith(
      FollowedCompaniesState _, $Res Function(FollowedCompaniesState) __);
}

/// @nodoc

class FollowedCompaniesInitial implements FollowedCompaniesState {
  const FollowedCompaniesInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FollowedCompaniesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FollowedCompaniesState.initial()';
  }
}

/// @nodoc

class FollowedCompaniesLoading implements FollowedCompaniesState {
  const FollowedCompaniesLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FollowedCompaniesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FollowedCompaniesState.loading()';
  }
}

/// @nodoc

class FollowedCompaniesSuccess implements FollowedCompaniesState {
  const FollowedCompaniesSuccess(
      {required final List<CompanyModel> companies,
      this.isLoadingMore = false,
      this.hasReachedMax = false})
      : _companies = companies;

  final List<CompanyModel> _companies;
  List<CompanyModel> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @JsonKey()
  final bool isLoadingMore;
  @JsonKey()
  final bool hasReachedMax;

  /// Create a copy of FollowedCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowedCompaniesSuccessCopyWith<FollowedCompaniesSuccess> get copyWith =>
      _$FollowedCompaniesSuccessCopyWithImpl<FollowedCompaniesSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowedCompaniesSuccess &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_companies),
      isLoadingMore,
      hasReachedMax);

  @override
  String toString() {
    return 'FollowedCompaniesState.success(companies: $companies, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $FollowedCompaniesSuccessCopyWith<$Res>
    implements $FollowedCompaniesStateCopyWith<$Res> {
  factory $FollowedCompaniesSuccessCopyWith(FollowedCompaniesSuccess value,
          $Res Function(FollowedCompaniesSuccess) _then) =
      _$FollowedCompaniesSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<CompanyModel> companies, bool isLoadingMore, bool hasReachedMax});
}

/// @nodoc
class _$FollowedCompaniesSuccessCopyWithImpl<$Res>
    implements $FollowedCompaniesSuccessCopyWith<$Res> {
  _$FollowedCompaniesSuccessCopyWithImpl(this._self, this._then);

  final FollowedCompaniesSuccess _self;
  final $Res Function(FollowedCompaniesSuccess) _then;

  /// Create a copy of FollowedCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companies = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(FollowedCompaniesSuccess(
      companies: null == companies
          ? _self._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
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

class FollowedCompaniesError implements FollowedCompaniesState {
  const FollowedCompaniesError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of FollowedCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FollowedCompaniesErrorCopyWith<FollowedCompaniesError> get copyWith =>
      _$FollowedCompaniesErrorCopyWithImpl<FollowedCompaniesError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FollowedCompaniesError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'FollowedCompaniesState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $FollowedCompaniesErrorCopyWith<$Res>
    implements $FollowedCompaniesStateCopyWith<$Res> {
  factory $FollowedCompaniesErrorCopyWith(FollowedCompaniesError value,
          $Res Function(FollowedCompaniesError) _then) =
      _$FollowedCompaniesErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$FollowedCompaniesErrorCopyWithImpl<$Res>
    implements $FollowedCompaniesErrorCopyWith<$Res> {
  _$FollowedCompaniesErrorCopyWithImpl(this._self, this._then);

  final FollowedCompaniesError _self;
  final $Res Function(FollowedCompaniesError) _then;

  /// Create a copy of FollowedCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(FollowedCompaniesError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
