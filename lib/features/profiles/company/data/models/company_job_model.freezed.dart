// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyJobModel {
  int get id;
  String get title;
  String? get location;
  @JsonKey(name: 'date_posted')
  String? get datePosted;
  @JsonKey(name: 'min_salary')
  String? get minSalary;
  @JsonKey(name: 'max_salary')
  String? get maxSalary;

  /// Create a copy of CompanyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyJobModelCopyWith<CompanyJobModel> get copyWith =>
      _$CompanyJobModelCopyWithImpl<CompanyJobModel>(
          this as CompanyJobModel, _$identity);

  /// Serializes this CompanyJobModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyJobModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, location, datePosted, minSalary, maxSalary);

  @override
  String toString() {
    return 'CompanyJobModel(id: $id, title: $title, location: $location, datePosted: $datePosted, minSalary: $minSalary, maxSalary: $maxSalary)';
  }
}

/// @nodoc
abstract mixin class $CompanyJobModelCopyWith<$Res> {
  factory $CompanyJobModelCopyWith(
          CompanyJobModel value, $Res Function(CompanyJobModel) _then) =
      _$CompanyJobModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String? location,
      @JsonKey(name: 'date_posted') String? datePosted,
      @JsonKey(name: 'min_salary') String? minSalary,
      @JsonKey(name: 'max_salary') String? maxSalary});
}

/// @nodoc
class _$CompanyJobModelCopyWithImpl<$Res>
    implements $CompanyJobModelCopyWith<$Res> {
  _$CompanyJobModelCopyWithImpl(this._self, this._then);

  final CompanyJobModel _self;
  final $Res Function(CompanyJobModel) _then;

  /// Create a copy of CompanyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = freezed,
    Object? datePosted = freezed,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted: freezed == datePosted
          ? _self.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalary: freezed == minSalary
          ? _self.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      maxSalary: freezed == maxSalary
          ? _self.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CompanyJobModel implements CompanyJobModel {
  const _CompanyJobModel(
      {required this.id,
      required this.title,
      this.location,
      @JsonKey(name: 'date_posted') this.datePosted,
      @JsonKey(name: 'min_salary') this.minSalary,
      @JsonKey(name: 'max_salary') this.maxSalary});
  factory _CompanyJobModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyJobModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? location;
  @override
  @JsonKey(name: 'date_posted')
  final String? datePosted;
  @override
  @JsonKey(name: 'min_salary')
  final String? minSalary;
  @override
  @JsonKey(name: 'max_salary')
  final String? maxSalary;

  /// Create a copy of CompanyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompanyJobModelCopyWith<_CompanyJobModel> get copyWith =>
      __$CompanyJobModelCopyWithImpl<_CompanyJobModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompanyJobModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyJobModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, location, datePosted, minSalary, maxSalary);

  @override
  String toString() {
    return 'CompanyJobModel(id: $id, title: $title, location: $location, datePosted: $datePosted, minSalary: $minSalary, maxSalary: $maxSalary)';
  }
}

/// @nodoc
abstract mixin class _$CompanyJobModelCopyWith<$Res>
    implements $CompanyJobModelCopyWith<$Res> {
  factory _$CompanyJobModelCopyWith(
          _CompanyJobModel value, $Res Function(_CompanyJobModel) _then) =
      __$CompanyJobModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? location,
      @JsonKey(name: 'date_posted') String? datePosted,
      @JsonKey(name: 'min_salary') String? minSalary,
      @JsonKey(name: 'max_salary') String? maxSalary});
}

/// @nodoc
class __$CompanyJobModelCopyWithImpl<$Res>
    implements _$CompanyJobModelCopyWith<$Res> {
  __$CompanyJobModelCopyWithImpl(this._self, this._then);

  final _CompanyJobModel _self;
  final $Res Function(_CompanyJobModel) _then;

  /// Create a copy of CompanyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = freezed,
    Object? datePosted = freezed,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
  }) {
    return _then(_CompanyJobModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted: freezed == datePosted
          ? _self.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalary: freezed == minSalary
          ? _self.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      maxSalary: freezed == maxSalary
          ? _self.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
