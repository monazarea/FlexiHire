// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompaniesListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompaniesListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompaniesListState()';
  }
}

/// @nodoc
class $CompaniesListStateCopyWith<$Res> {
  $CompaniesListStateCopyWith(
      CompaniesListState _, $Res Function(CompaniesListState) __);
}

/// @nodoc

class _CompaniesListInitial implements CompaniesListState {
  const _CompaniesListInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CompaniesListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompaniesListState.initial()';
  }
}

/// @nodoc

class CompaniesListLoading implements CompaniesListState {
  const CompaniesListLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompaniesListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompaniesListState.loading()';
  }
}

/// @nodoc

class CompaniesListSuccess implements CompaniesListState {
  const CompaniesListSuccess(
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

  /// Create a copy of CompaniesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompaniesListSuccessCopyWith<CompaniesListSuccess> get copyWith =>
      _$CompaniesListSuccessCopyWithImpl<CompaniesListSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompaniesListSuccess &&
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
    return 'CompaniesListState.success(companies: $companies, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }
}

/// @nodoc
abstract mixin class $CompaniesListSuccessCopyWith<$Res>
    implements $CompaniesListStateCopyWith<$Res> {
  factory $CompaniesListSuccessCopyWith(CompaniesListSuccess value,
          $Res Function(CompaniesListSuccess) _then) =
      _$CompaniesListSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<CompanyModel> companies, bool isLoadingMore, bool hasReachedMax});
}

/// @nodoc
class _$CompaniesListSuccessCopyWithImpl<$Res>
    implements $CompaniesListSuccessCopyWith<$Res> {
  _$CompaniesListSuccessCopyWithImpl(this._self, this._then);

  final CompaniesListSuccess _self;
  final $Res Function(CompaniesListSuccess) _then;

  /// Create a copy of CompaniesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companies = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(CompaniesListSuccess(
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

class CompaniesListError implements CompaniesListState {
  const CompaniesListError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of CompaniesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompaniesListErrorCopyWith<CompaniesListError> get copyWith =>
      _$CompaniesListErrorCopyWithImpl<CompaniesListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompaniesListError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'CompaniesListState.error(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $CompaniesListErrorCopyWith<$Res>
    implements $CompaniesListStateCopyWith<$Res> {
  factory $CompaniesListErrorCopyWith(
          CompaniesListError value, $Res Function(CompaniesListError) _then) =
      _$CompaniesListErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$CompaniesListErrorCopyWithImpl<$Res>
    implements $CompaniesListErrorCopyWith<$Res> {
  _$CompaniesListErrorCopyWithImpl(this._self, this._then);

  final CompaniesListError _self;
  final $Res Function(CompaniesListError) _then;

  /// Create a copy of CompaniesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(CompaniesListError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
