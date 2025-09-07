// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_companies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopCompaniesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopCompaniesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TopCompaniesState()';
  }
}

/// @nodoc
class $TopCompaniesStateCopyWith<$Res> {
  $TopCompaniesStateCopyWith(
      TopCompaniesState _, $Res Function(TopCompaniesState) __);
}

/// @nodoc

class _Initial implements TopCompaniesState {
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
    return 'TopCompaniesState.initial()';
  }
}

/// @nodoc

class TopCompaniesLoading implements TopCompaniesState {
  const TopCompaniesLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopCompaniesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TopCompaniesState.topCompaniesLoading()';
  }
}

/// @nodoc

class TopCompaniesSuccess implements TopCompaniesState {
  const TopCompaniesSuccess(final List<CompanyModel> companies)
      : _companies = companies;

  final List<CompanyModel> _companies;
  List<CompanyModel> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  /// Create a copy of TopCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopCompaniesSuccessCopyWith<TopCompaniesSuccess> get copyWith =>
      _$TopCompaniesSuccessCopyWithImpl<TopCompaniesSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopCompaniesSuccess &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_companies));

  @override
  String toString() {
    return 'TopCompaniesState.topCompaniesSuccess(companies: $companies)';
  }
}

/// @nodoc
abstract mixin class $TopCompaniesSuccessCopyWith<$Res>
    implements $TopCompaniesStateCopyWith<$Res> {
  factory $TopCompaniesSuccessCopyWith(
          TopCompaniesSuccess value, $Res Function(TopCompaniesSuccess) _then) =
      _$TopCompaniesSuccessCopyWithImpl;
  @useResult
  $Res call({List<CompanyModel> companies});
}

/// @nodoc
class _$TopCompaniesSuccessCopyWithImpl<$Res>
    implements $TopCompaniesSuccessCopyWith<$Res> {
  _$TopCompaniesSuccessCopyWithImpl(this._self, this._then);

  final TopCompaniesSuccess _self;
  final $Res Function(TopCompaniesSuccess) _then;

  /// Create a copy of TopCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companies = null,
  }) {
    return _then(TopCompaniesSuccess(
      null == companies
          ? _self._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<CompanyModel>,
    ));
  }
}

/// @nodoc

class TopCompaniesError implements TopCompaniesState {
  const TopCompaniesError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of TopCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopCompaniesErrorCopyWith<TopCompaniesError> get copyWith =>
      _$TopCompaniesErrorCopyWithImpl<TopCompaniesError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopCompaniesError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'TopCompaniesState.topCompaniesError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $TopCompaniesErrorCopyWith<$Res>
    implements $TopCompaniesStateCopyWith<$Res> {
  factory $TopCompaniesErrorCopyWith(
          TopCompaniesError value, $Res Function(TopCompaniesError) _then) =
      _$TopCompaniesErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$TopCompaniesErrorCopyWithImpl<$Res>
    implements $TopCompaniesErrorCopyWith<$Res> {
  _$TopCompaniesErrorCopyWithImpl(this._self, this._then);

  final TopCompaniesError _self;
  final $Res Function(TopCompaniesError) _then;

  /// Create a copy of TopCompaniesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(TopCompaniesError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
