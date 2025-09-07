// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyModel {
  int get id;
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  String? get email;
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @JsonKey(name: 'background_url')
  String? get backgroundUrl;
  String? get cv;
  String? get location;
  String? get description;
  bool? get blocked;
  @JsonKey(name: 'jobs_count')
  String? get jobsCount;
  @JsonKey(name: 'average_rating')
  double? get averageRating;
  @JsonKey(name: 'review_count')
  int? get reviewCount;
  bool? get following;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      _$CompanyModelCopyWithImpl<CompanyModel>(
          this as CompanyModel, _$identity);

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl) &&
            (identical(other.cv, cv) || other.cv == cv) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.jobsCount, jobsCount) ||
                other.jobsCount == jobsCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      email,
      imageUrl,
      backgroundUrl,
      cv,
      location,
      description,
      blocked,
      jobsCount,
      averageRating,
      reviewCount,
      following);

  @override
  String toString() {
    return 'CompanyModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, backgroundUrl: $backgroundUrl, cv: $cv, location: $location, description: $description, blocked: $blocked, jobsCount: $jobsCount, averageRating: $averageRating, reviewCount: $reviewCount, following: $following)';
  }
}

/// @nodoc
abstract mixin class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) _then) =
      _$CompanyModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'background_url') String? backgroundUrl,
      String? cv,
      String? location,
      String? description,
      bool? blocked,
      @JsonKey(name: 'jobs_count') String? jobsCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      @JsonKey(name: 'review_count') int? reviewCount,
      bool? following});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res> implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._self, this._then);

  final CompanyModel _self;
  final $Res Function(CompanyModel) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? backgroundUrl = freezed,
    Object? cv = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? blocked = freezed,
    Object? jobsCount = freezed,
    Object? averageRating = freezed,
    Object? reviewCount = freezed,
    Object? following = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundUrl: freezed == backgroundUrl
          ? _self.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cv: freezed == cv
          ? _self.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _self.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobsCount: freezed == jobsCount
          ? _self.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _self.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _self.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CompanyModel implements CompanyModel {
  const _CompanyModel(
      {required this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'background_url') this.backgroundUrl,
      this.cv,
      this.location,
      this.description,
      this.blocked,
      @JsonKey(name: 'jobs_count') this.jobsCount,
      @JsonKey(name: 'average_rating') this.averageRating,
      @JsonKey(name: 'review_count') this.reviewCount,
      this.following = false});
  factory _CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'background_url')
  final String? backgroundUrl;
  @override
  final String? cv;
  @override
  final String? location;
  @override
  final String? description;
  @override
  final bool? blocked;
  @override
  @JsonKey(name: 'jobs_count')
  final String? jobsCount;
  @override
  @JsonKey(name: 'average_rating')
  final double? averageRating;
  @override
  @JsonKey(name: 'review_count')
  final int? reviewCount;
  @override
  @JsonKey()
  final bool? following;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompanyModelCopyWith<_CompanyModel> get copyWith =>
      __$CompanyModelCopyWithImpl<_CompanyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompanyModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl) &&
            (identical(other.cv, cv) || other.cv == cv) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.jobsCount, jobsCount) ||
                other.jobsCount == jobsCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      email,
      imageUrl,
      backgroundUrl,
      cv,
      location,
      description,
      blocked,
      jobsCount,
      averageRating,
      reviewCount,
      following);

  @override
  String toString() {
    return 'CompanyModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, backgroundUrl: $backgroundUrl, cv: $cv, location: $location, description: $description, blocked: $blocked, jobsCount: $jobsCount, averageRating: $averageRating, reviewCount: $reviewCount, following: $following)';
  }
}

/// @nodoc
abstract mixin class _$CompanyModelCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$CompanyModelCopyWith(
          _CompanyModel value, $Res Function(_CompanyModel) _then) =
      __$CompanyModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'background_url') String? backgroundUrl,
      String? cv,
      String? location,
      String? description,
      bool? blocked,
      @JsonKey(name: 'jobs_count') String? jobsCount,
      @JsonKey(name: 'average_rating') double? averageRating,
      @JsonKey(name: 'review_count') int? reviewCount,
      bool? following});
}

/// @nodoc
class __$CompanyModelCopyWithImpl<$Res>
    implements _$CompanyModelCopyWith<$Res> {
  __$CompanyModelCopyWithImpl(this._self, this._then);

  final _CompanyModel _self;
  final $Res Function(_CompanyModel) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? backgroundUrl = freezed,
    Object? cv = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? blocked = freezed,
    Object? jobsCount = freezed,
    Object? averageRating = freezed,
    Object? reviewCount = freezed,
    Object? following = freezed,
  }) {
    return _then(_CompanyModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundUrl: freezed == backgroundUrl
          ? _self.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cv: freezed == cv
          ? _self.cv
          : cv // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _self.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobsCount: freezed == jobsCount
          ? _self.jobsCount
          : jobsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _self.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _self.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _self.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
