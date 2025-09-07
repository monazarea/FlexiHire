// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardJobModel {
  int get id;
  String get title;
  @JsonKey(name: 'user_id', fromJson: _stringOrIntToInt)
  int? get userId;
  String? get location;
  @JsonKey(name: 'date_posted')
  String? get datePosted;
  String? get description;
  List<String> get skills; // --- تم تعديل هذا الجزء ---
// V-- هنا التعديل المهم --V
  @JsonKey(name: 'min_salary', fromJson: _stringOrIntToInt)
  int? get minSalary;
  @JsonKey(name: 'max_salary', fromJson: _stringOrIntToInt)
  int? get maxSalary;
  @JsonKey(name: 'salary_negotiable')
  bool? get salaryNegotiable;
  @JsonKey(name: 'payment_period')
  String? get paymentPeriod;
  @JsonKey(name: 'applications_count')
  String? get applicationsCount;
  @JsonKey(name: 'payment_currency')
  String? get paymentCurrency;
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @JsonKey(name: 'hiring_multiple_candidates')
  bool? get hiringMultipleCandidates;

  /// Create a copy of DashboardJobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DashboardJobModelCopyWith<DashboardJobModel> get copyWith =>
      _$DashboardJobModelCopyWithImpl<DashboardJobModel>(
          this as DashboardJobModel, _$identity);

  /// Serializes this DashboardJobModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardJobModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
            (identical(other.salaryNegotiable, salaryNegotiable) ||
                other.salaryNegotiable == salaryNegotiable) &&
            (identical(other.paymentPeriod, paymentPeriod) ||
                other.paymentPeriod == paymentPeriod) &&
            (identical(other.applicationsCount, applicationsCount) ||
                other.applicationsCount == applicationsCount) &&
            (identical(other.paymentCurrency, paymentCurrency) ||
                other.paymentCurrency == paymentCurrency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(
                    other.hiringMultipleCandidates, hiringMultipleCandidates) ||
                other.hiringMultipleCandidates == hiringMultipleCandidates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      userId,
      location,
      datePosted,
      description,
      const DeepCollectionEquality().hash(skills),
      minSalary,
      maxSalary,
      salaryNegotiable,
      paymentPeriod,
      applicationsCount,
      paymentCurrency,
      createdAt,
      updatedAt,
      hiringMultipleCandidates);

  @override
  String toString() {
    return 'DashboardJobModel(id: $id, title: $title, userId: $userId, location: $location, datePosted: $datePosted, description: $description, skills: $skills, minSalary: $minSalary, maxSalary: $maxSalary, salaryNegotiable: $salaryNegotiable, paymentPeriod: $paymentPeriod, applicationsCount: $applicationsCount, paymentCurrency: $paymentCurrency, createdAt: $createdAt, updatedAt: $updatedAt, hiringMultipleCandidates: $hiringMultipleCandidates)';
  }
}

/// @nodoc
abstract mixin class $DashboardJobModelCopyWith<$Res> {
  factory $DashboardJobModelCopyWith(
          DashboardJobModel value, $Res Function(DashboardJobModel) _then) =
      _$DashboardJobModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'user_id', fromJson: _stringOrIntToInt) int? userId,
      String? location,
      @JsonKey(name: 'date_posted') String? datePosted,
      String? description,
      List<String> skills,
      @JsonKey(name: 'min_salary', fromJson: _stringOrIntToInt) int? minSalary,
      @JsonKey(name: 'max_salary', fromJson: _stringOrIntToInt) int? maxSalary,
      @JsonKey(name: 'salary_negotiable') bool? salaryNegotiable,
      @JsonKey(name: 'payment_period') String? paymentPeriod,
      @JsonKey(name: 'applications_count') String? applicationsCount,
      @JsonKey(name: 'payment_currency') String? paymentCurrency,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'hiring_multiple_candidates')
      bool? hiringMultipleCandidates});
}

/// @nodoc
class _$DashboardJobModelCopyWithImpl<$Res>
    implements $DashboardJobModelCopyWith<$Res> {
  _$DashboardJobModelCopyWithImpl(this._self, this._then);

  final DashboardJobModel _self;
  final $Res Function(DashboardJobModel) _then;

  /// Create a copy of DashboardJobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? userId = freezed,
    Object? location = freezed,
    Object? datePosted = freezed,
    Object? description = freezed,
    Object? skills = null,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? salaryNegotiable = freezed,
    Object? paymentPeriod = freezed,
    Object? applicationsCount = freezed,
    Object? paymentCurrency = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hiringMultipleCandidates = freezed,
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
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted: freezed == datePosted
          ? _self.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: null == skills
          ? _self.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minSalary: freezed == minSalary
          ? _self.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _self.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryNegotiable: freezed == salaryNegotiable
          ? _self.salaryNegotiable
          : salaryNegotiable // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentPeriod: freezed == paymentPeriod
          ? _self.paymentPeriod
          : paymentPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationsCount: freezed == applicationsCount
          ? _self.applicationsCount
          : applicationsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCurrency: freezed == paymentCurrency
          ? _self.paymentCurrency
          : paymentCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      hiringMultipleCandidates: freezed == hiringMultipleCandidates
          ? _self.hiringMultipleCandidates
          : hiringMultipleCandidates // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DashboardJobModel implements DashboardJobModel {
  const _DashboardJobModel(
      {required this.id,
      required this.title,
      @JsonKey(name: 'user_id', fromJson: _stringOrIntToInt) this.userId,
      this.location,
      @JsonKey(name: 'date_posted') this.datePosted,
      this.description,
      final List<String> skills = const [],
      @JsonKey(name: 'min_salary', fromJson: _stringOrIntToInt) this.minSalary,
      @JsonKey(name: 'max_salary', fromJson: _stringOrIntToInt) this.maxSalary,
      @JsonKey(name: 'salary_negotiable') this.salaryNegotiable,
      @JsonKey(name: 'payment_period') this.paymentPeriod,
      @JsonKey(name: 'applications_count') this.applicationsCount,
      @JsonKey(name: 'payment_currency') this.paymentCurrency,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'hiring_multiple_candidates')
      this.hiringMultipleCandidates})
      : _skills = skills;
  factory _DashboardJobModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardJobModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'user_id', fromJson: _stringOrIntToInt)
  final int? userId;
  @override
  final String? location;
  @override
  @JsonKey(name: 'date_posted')
  final String? datePosted;
  @override
  final String? description;
  final List<String> _skills;
  @override
  @JsonKey()
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

// --- تم تعديل هذا الجزء ---
// V-- هنا التعديل المهم --V
  @override
  @JsonKey(name: 'min_salary', fromJson: _stringOrIntToInt)
  final int? minSalary;
  @override
  @JsonKey(name: 'max_salary', fromJson: _stringOrIntToInt)
  final int? maxSalary;
  @override
  @JsonKey(name: 'salary_negotiable')
  final bool? salaryNegotiable;
  @override
  @JsonKey(name: 'payment_period')
  final String? paymentPeriod;
  @override
  @JsonKey(name: 'applications_count')
  final String? applicationsCount;
  @override
  @JsonKey(name: 'payment_currency')
  final String? paymentCurrency;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'hiring_multiple_candidates')
  final bool? hiringMultipleCandidates;

  /// Create a copy of DashboardJobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DashboardJobModelCopyWith<_DashboardJobModel> get copyWith =>
      __$DashboardJobModelCopyWithImpl<_DashboardJobModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DashboardJobModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardJobModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
            (identical(other.salaryNegotiable, salaryNegotiable) ||
                other.salaryNegotiable == salaryNegotiable) &&
            (identical(other.paymentPeriod, paymentPeriod) ||
                other.paymentPeriod == paymentPeriod) &&
            (identical(other.applicationsCount, applicationsCount) ||
                other.applicationsCount == applicationsCount) &&
            (identical(other.paymentCurrency, paymentCurrency) ||
                other.paymentCurrency == paymentCurrency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(
                    other.hiringMultipleCandidates, hiringMultipleCandidates) ||
                other.hiringMultipleCandidates == hiringMultipleCandidates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      userId,
      location,
      datePosted,
      description,
      const DeepCollectionEquality().hash(_skills),
      minSalary,
      maxSalary,
      salaryNegotiable,
      paymentPeriod,
      applicationsCount,
      paymentCurrency,
      createdAt,
      updatedAt,
      hiringMultipleCandidates);

  @override
  String toString() {
    return 'DashboardJobModel(id: $id, title: $title, userId: $userId, location: $location, datePosted: $datePosted, description: $description, skills: $skills, minSalary: $minSalary, maxSalary: $maxSalary, salaryNegotiable: $salaryNegotiable, paymentPeriod: $paymentPeriod, applicationsCount: $applicationsCount, paymentCurrency: $paymentCurrency, createdAt: $createdAt, updatedAt: $updatedAt, hiringMultipleCandidates: $hiringMultipleCandidates)';
  }
}

/// @nodoc
abstract mixin class _$DashboardJobModelCopyWith<$Res>
    implements $DashboardJobModelCopyWith<$Res> {
  factory _$DashboardJobModelCopyWith(
          _DashboardJobModel value, $Res Function(_DashboardJobModel) _then) =
      __$DashboardJobModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'user_id', fromJson: _stringOrIntToInt) int? userId,
      String? location,
      @JsonKey(name: 'date_posted') String? datePosted,
      String? description,
      List<String> skills,
      @JsonKey(name: 'min_salary', fromJson: _stringOrIntToInt) int? minSalary,
      @JsonKey(name: 'max_salary', fromJson: _stringOrIntToInt) int? maxSalary,
      @JsonKey(name: 'salary_negotiable') bool? salaryNegotiable,
      @JsonKey(name: 'payment_period') String? paymentPeriod,
      @JsonKey(name: 'applications_count') String? applicationsCount,
      @JsonKey(name: 'payment_currency') String? paymentCurrency,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'hiring_multiple_candidates')
      bool? hiringMultipleCandidates});
}

/// @nodoc
class __$DashboardJobModelCopyWithImpl<$Res>
    implements _$DashboardJobModelCopyWith<$Res> {
  __$DashboardJobModelCopyWithImpl(this._self, this._then);

  final _DashboardJobModel _self;
  final $Res Function(_DashboardJobModel) _then;

  /// Create a copy of DashboardJobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? userId = freezed,
    Object? location = freezed,
    Object? datePosted = freezed,
    Object? description = freezed,
    Object? skills = null,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? salaryNegotiable = freezed,
    Object? paymentPeriod = freezed,
    Object? applicationsCount = freezed,
    Object? paymentCurrency = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hiringMultipleCandidates = freezed,
  }) {
    return _then(_DashboardJobModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted: freezed == datePosted
          ? _self.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minSalary: freezed == minSalary
          ? _self.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalary: freezed == maxSalary
          ? _self.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      salaryNegotiable: freezed == salaryNegotiable
          ? _self.salaryNegotiable
          : salaryNegotiable // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentPeriod: freezed == paymentPeriod
          ? _self.paymentPeriod
          : paymentPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationsCount: freezed == applicationsCount
          ? _self.applicationsCount
          : applicationsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCurrency: freezed == paymentCurrency
          ? _self.paymentCurrency
          : paymentCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      hiringMultipleCandidates: freezed == hiringMultipleCandidates
          ? _self.hiringMultipleCandidates
          : hiringMultipleCandidates // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
