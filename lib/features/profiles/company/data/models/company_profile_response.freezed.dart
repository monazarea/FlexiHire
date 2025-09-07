// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyProfileResponse {
  bool? get status;
  @JsonKey(name: 'company')
  CompanyProfileData? get data;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyProfileResponseCopyWith<CompanyProfileResponse> get copyWith =>
      _$CompanyProfileResponseCopyWithImpl<CompanyProfileResponse>(
          this as CompanyProfileResponse, _$identity);

  /// Serializes this CompanyProfileResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyProfileResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @override
  String toString() {
    return 'CompanyProfileResponse(status: $status, data: $data)';
  }
}

/// @nodoc
abstract mixin class $CompanyProfileResponseCopyWith<$Res> {
  factory $CompanyProfileResponseCopyWith(CompanyProfileResponse value,
          $Res Function(CompanyProfileResponse) _then) =
      _$CompanyProfileResponseCopyWithImpl;
  @useResult
  $Res call({bool? status, @JsonKey(name: 'company') CompanyProfileData? data});

  $CompanyProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CompanyProfileResponseCopyWithImpl<$Res>
    implements $CompanyProfileResponseCopyWith<$Res> {
  _$CompanyProfileResponseCopyWithImpl(this._self, this._then);

  final CompanyProfileResponse _self;
  final $Res Function(CompanyProfileResponse) _then;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyProfileData?,
    ));
  }

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyProfileDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CompanyProfileDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _CompanyProfileResponse implements CompanyProfileResponse {
  const _CompanyProfileResponse(
      {this.status, @JsonKey(name: 'company') this.data});
  factory _CompanyProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileResponseFromJson(json);

  @override
  final bool? status;
  @override
  @JsonKey(name: 'company')
  final CompanyProfileData? data;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompanyProfileResponseCopyWith<_CompanyProfileResponse> get copyWith =>
      __$CompanyProfileResponseCopyWithImpl<_CompanyProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompanyProfileResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyProfileResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @override
  String toString() {
    return 'CompanyProfileResponse(status: $status, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$CompanyProfileResponseCopyWith<$Res>
    implements $CompanyProfileResponseCopyWith<$Res> {
  factory _$CompanyProfileResponseCopyWith(_CompanyProfileResponse value,
          $Res Function(_CompanyProfileResponse) _then) =
      __$CompanyProfileResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? status, @JsonKey(name: 'company') CompanyProfileData? data});

  @override
  $CompanyProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CompanyProfileResponseCopyWithImpl<$Res>
    implements _$CompanyProfileResponseCopyWith<$Res> {
  __$CompanyProfileResponseCopyWithImpl(this._self, this._then);

  final _CompanyProfileResponse _self;
  final $Res Function(_CompanyProfileResponse) _then;

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_CompanyProfileResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyProfileData?,
    ));
  }

  /// Create a copy of CompanyProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyProfileDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $CompanyProfileDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$CompanyProfileData {
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
  String? get description;
  String? get location;
  String? get type;
  bool? get following;
  List<CompanyJobModel> get jobs;
  CompanyReviewsData? get reviews;

  /// Create a copy of CompanyProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyProfileDataCopyWith<CompanyProfileData> get copyWith =>
      _$CompanyProfileDataCopyWithImpl<CompanyProfileData>(
          this as CompanyProfileData, _$identity);

  /// Serializes this CompanyProfileData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyProfileData &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.following, following) ||
                other.following == following) &&
            const DeepCollectionEquality().equals(other.jobs, jobs) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
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
      description,
      location,
      type,
      following,
      const DeepCollectionEquality().hash(jobs),
      reviews);

  @override
  String toString() {
    return 'CompanyProfileData(id: $id, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, backgroundUrl: $backgroundUrl, description: $description, location: $location, type: $type, following: $following, jobs: $jobs, reviews: $reviews)';
  }
}

/// @nodoc
abstract mixin class $CompanyProfileDataCopyWith<$Res> {
  factory $CompanyProfileDataCopyWith(
          CompanyProfileData value, $Res Function(CompanyProfileData) _then) =
      _$CompanyProfileDataCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'background_url') String? backgroundUrl,
      String? description,
      String? location,
      String? type,
      bool? following,
      List<CompanyJobModel> jobs,
      CompanyReviewsData? reviews});

  $CompanyReviewsDataCopyWith<$Res>? get reviews;
}

/// @nodoc
class _$CompanyProfileDataCopyWithImpl<$Res>
    implements $CompanyProfileDataCopyWith<$Res> {
  _$CompanyProfileDataCopyWithImpl(this._self, this._then);

  final CompanyProfileData _self;
  final $Res Function(CompanyProfileData) _then;

  /// Create a copy of CompanyProfileData
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
    Object? description = freezed,
    Object? location = freezed,
    Object? type = freezed,
    Object? following = freezed,
    Object? jobs = null,
    Object? reviews = freezed,
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _self.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobs: null == jobs
          ? _self.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<CompanyJobModel>,
      reviews: freezed == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as CompanyReviewsData?,
    ));
  }

  /// Create a copy of CompanyProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyReviewsDataCopyWith<$Res>? get reviews {
    if (_self.reviews == null) {
      return null;
    }

    return $CompanyReviewsDataCopyWith<$Res>(_self.reviews!, (value) {
      return _then(_self.copyWith(reviews: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _CompanyProfileData implements CompanyProfileData {
  const _CompanyProfileData(
      {required this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'background_url') this.backgroundUrl,
      this.description,
      this.location,
      this.type,
      this.following = false,
      final List<CompanyJobModel> jobs = const [],
      this.reviews})
      : _jobs = jobs;
  factory _CompanyProfileData.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileDataFromJson(json);

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
  final String? description;
  @override
  final String? location;
  @override
  final String? type;
  @override
  @JsonKey()
  final bool? following;
  final List<CompanyJobModel> _jobs;
  @override
  @JsonKey()
  List<CompanyJobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @override
  final CompanyReviewsData? reviews;

  /// Create a copy of CompanyProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompanyProfileDataCopyWith<_CompanyProfileData> get copyWith =>
      __$CompanyProfileDataCopyWithImpl<_CompanyProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompanyProfileDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyProfileData &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.following, following) ||
                other.following == following) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            (identical(other.reviews, reviews) || other.reviews == reviews));
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
      description,
      location,
      type,
      following,
      const DeepCollectionEquality().hash(_jobs),
      reviews);

  @override
  String toString() {
    return 'CompanyProfileData(id: $id, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, backgroundUrl: $backgroundUrl, description: $description, location: $location, type: $type, following: $following, jobs: $jobs, reviews: $reviews)';
  }
}

/// @nodoc
abstract mixin class _$CompanyProfileDataCopyWith<$Res>
    implements $CompanyProfileDataCopyWith<$Res> {
  factory _$CompanyProfileDataCopyWith(
          _CompanyProfileData value, $Res Function(_CompanyProfileData) _then) =
      __$CompanyProfileDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'background_url') String? backgroundUrl,
      String? description,
      String? location,
      String? type,
      bool? following,
      List<CompanyJobModel> jobs,
      CompanyReviewsData? reviews});

  @override
  $CompanyReviewsDataCopyWith<$Res>? get reviews;
}

/// @nodoc
class __$CompanyProfileDataCopyWithImpl<$Res>
    implements _$CompanyProfileDataCopyWith<$Res> {
  __$CompanyProfileDataCopyWithImpl(this._self, this._then);

  final _CompanyProfileData _self;
  final $Res Function(_CompanyProfileData) _then;

  /// Create a copy of CompanyProfileData
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
    Object? description = freezed,
    Object? location = freezed,
    Object? type = freezed,
    Object? following = freezed,
    Object? jobs = null,
    Object? reviews = freezed,
  }) {
    return _then(_CompanyProfileData(
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _self.following
          : following // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobs: null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<CompanyJobModel>,
      reviews: freezed == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as CompanyReviewsData?,
    ));
  }

  /// Create a copy of CompanyProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyReviewsDataCopyWith<$Res>? get reviews {
    if (_self.reviews == null) {
      return null;
    }

    return $CompanyReviewsDataCopyWith<$Res>(_self.reviews!, (value) {
      return _then(_self.copyWith(reviews: value));
    });
  }
}

/// @nodoc
mixin _$CompanyReviewsData {
  @JsonKey(name: 'items')
  List<CompanyReviewModel> get reviews;
  @JsonKey(name: 'average_rating')
  double? get averageRating;
  int? get count;
  @JsonKey(name: 'has_reviewed')
  bool? get hasReviewed;
  @JsonKey(name: 'user_review')
  CompanyReviewModel? get userReview;

  /// Create a copy of CompanyReviewsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyReviewsDataCopyWith<CompanyReviewsData> get copyWith =>
      _$CompanyReviewsDataCopyWithImpl<CompanyReviewsData>(
          this as CompanyReviewsData, _$identity);

  /// Serializes this CompanyReviewsData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyReviewsData &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.hasReviewed, hasReviewed) ||
                other.hasReviewed == hasReviewed) &&
            (identical(other.userReview, userReview) ||
                other.userReview == userReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviews),
      averageRating,
      count,
      hasReviewed,
      userReview);

  @override
  String toString() {
    return 'CompanyReviewsData(reviews: $reviews, averageRating: $averageRating, count: $count, hasReviewed: $hasReviewed, userReview: $userReview)';
  }
}

/// @nodoc
abstract mixin class $CompanyReviewsDataCopyWith<$Res> {
  factory $CompanyReviewsDataCopyWith(
          CompanyReviewsData value, $Res Function(CompanyReviewsData) _then) =
      _$CompanyReviewsDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'items') List<CompanyReviewModel> reviews,
      @JsonKey(name: 'average_rating') double? averageRating,
      int? count,
      @JsonKey(name: 'has_reviewed') bool? hasReviewed,
      @JsonKey(name: 'user_review') CompanyReviewModel? userReview});
}

/// @nodoc
class _$CompanyReviewsDataCopyWithImpl<$Res>
    implements $CompanyReviewsDataCopyWith<$Res> {
  _$CompanyReviewsDataCopyWithImpl(this._self, this._then);

  final CompanyReviewsData _self;
  final $Res Function(CompanyReviewsData) _then;

  /// Create a copy of CompanyReviewsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
    Object? averageRating = freezed,
    Object? count = freezed,
    Object? hasReviewed = freezed,
    Object? userReview = freezed,
  }) {
    return _then(_self.copyWith(
      reviews: null == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CompanyReviewModel>,
      averageRating: freezed == averageRating
          ? _self.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReviewed: freezed == hasReviewed
          ? _self.hasReviewed
          : hasReviewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      userReview: freezed == userReview
          ? _self.userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as CompanyReviewModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CompanyReviewsData implements CompanyReviewsData {
  const _CompanyReviewsData(
      {@JsonKey(name: 'items')
      final List<CompanyReviewModel> reviews = const [],
      @JsonKey(name: 'average_rating') this.averageRating,
      this.count,
      @JsonKey(name: 'has_reviewed') this.hasReviewed,
      @JsonKey(name: 'user_review') this.userReview})
      : _reviews = reviews;
  factory _CompanyReviewsData.fromJson(Map<String, dynamic> json) =>
      _$CompanyReviewsDataFromJson(json);

  final List<CompanyReviewModel> _reviews;
  @override
  @JsonKey(name: 'items')
  List<CompanyReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @JsonKey(name: 'average_rating')
  final double? averageRating;
  @override
  final int? count;
  @override
  @JsonKey(name: 'has_reviewed')
  final bool? hasReviewed;
  @override
  @JsonKey(name: 'user_review')
  final CompanyReviewModel? userReview;

  /// Create a copy of CompanyReviewsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CompanyReviewsDataCopyWith<_CompanyReviewsData> get copyWith =>
      __$CompanyReviewsDataCopyWithImpl<_CompanyReviewsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CompanyReviewsDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyReviewsData &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.hasReviewed, hasReviewed) ||
                other.hasReviewed == hasReviewed) &&
            (identical(other.userReview, userReview) ||
                other.userReview == userReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reviews),
      averageRating,
      count,
      hasReviewed,
      userReview);

  @override
  String toString() {
    return 'CompanyReviewsData(reviews: $reviews, averageRating: $averageRating, count: $count, hasReviewed: $hasReviewed, userReview: $userReview)';
  }
}

/// @nodoc
abstract mixin class _$CompanyReviewsDataCopyWith<$Res>
    implements $CompanyReviewsDataCopyWith<$Res> {
  factory _$CompanyReviewsDataCopyWith(
          _CompanyReviewsData value, $Res Function(_CompanyReviewsData) _then) =
      __$CompanyReviewsDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'items') List<CompanyReviewModel> reviews,
      @JsonKey(name: 'average_rating') double? averageRating,
      int? count,
      @JsonKey(name: 'has_reviewed') bool? hasReviewed,
      @JsonKey(name: 'user_review') CompanyReviewModel? userReview});
}

/// @nodoc
class __$CompanyReviewsDataCopyWithImpl<$Res>
    implements _$CompanyReviewsDataCopyWith<$Res> {
  __$CompanyReviewsDataCopyWithImpl(this._self, this._then);

  final _CompanyReviewsData _self;
  final $Res Function(_CompanyReviewsData) _then;

  /// Create a copy of CompanyReviewsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reviews = null,
    Object? averageRating = freezed,
    Object? count = freezed,
    Object? hasReviewed = freezed,
    Object? userReview = freezed,
  }) {
    return _then(_CompanyReviewsData(
      reviews: null == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CompanyReviewModel>,
      averageRating: freezed == averageRating
          ? _self.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReviewed: freezed == hasReviewed
          ? _self.hasReviewed
          : hasReviewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      userReview: freezed == userReview
          ? _self.userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as CompanyReviewModel?,
    ));
  }
}

// dart format on
