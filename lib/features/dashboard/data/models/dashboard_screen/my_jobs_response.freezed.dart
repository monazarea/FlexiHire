// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_jobs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyJobsResponse {
  bool? get status;
  String? get message;
  @JsonKey(name: 'data')
  MyJobsPaginationData? get paginationData;

  /// Create a copy of MyJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyJobsResponseCopyWith<MyJobsResponse> get copyWith =>
      _$MyJobsResponseCopyWithImpl<MyJobsResponse>(
          this as MyJobsResponse, _$identity);

  /// Serializes this MyJobsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyJobsResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paginationData, paginationData) ||
                other.paginationData == paginationData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, paginationData);

  @override
  String toString() {
    return 'MyJobsResponse(status: $status, message: $message, paginationData: $paginationData)';
  }
}

/// @nodoc
abstract mixin class $MyJobsResponseCopyWith<$Res> {
  factory $MyJobsResponseCopyWith(
          MyJobsResponse value, $Res Function(MyJobsResponse) _then) =
      _$MyJobsResponseCopyWithImpl;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      @JsonKey(name: 'data') MyJobsPaginationData? paginationData});

  $MyJobsPaginationDataCopyWith<$Res>? get paginationData;
}

/// @nodoc
class _$MyJobsResponseCopyWithImpl<$Res>
    implements $MyJobsResponseCopyWith<$Res> {
  _$MyJobsResponseCopyWithImpl(this._self, this._then);

  final MyJobsResponse _self;
  final $Res Function(MyJobsResponse) _then;

  /// Create a copy of MyJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? paginationData = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paginationData: freezed == paginationData
          ? _self.paginationData
          : paginationData // ignore: cast_nullable_to_non_nullable
              as MyJobsPaginationData?,
    ));
  }

  /// Create a copy of MyJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyJobsPaginationDataCopyWith<$Res>? get paginationData {
    if (_self.paginationData == null) {
      return null;
    }

    return $MyJobsPaginationDataCopyWith<$Res>(_self.paginationData!, (value) {
      return _then(_self.copyWith(paginationData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MyJobsResponse implements MyJobsResponse {
  const _MyJobsResponse(
      {this.status, this.message, @JsonKey(name: 'data') this.paginationData});
  factory _MyJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyJobsResponseFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final MyJobsPaginationData? paginationData;

  /// Create a copy of MyJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyJobsResponseCopyWith<_MyJobsResponse> get copyWith =>
      __$MyJobsResponseCopyWithImpl<_MyJobsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyJobsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyJobsResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paginationData, paginationData) ||
                other.paginationData == paginationData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, paginationData);

  @override
  String toString() {
    return 'MyJobsResponse(status: $status, message: $message, paginationData: $paginationData)';
  }
}

/// @nodoc
abstract mixin class _$MyJobsResponseCopyWith<$Res>
    implements $MyJobsResponseCopyWith<$Res> {
  factory _$MyJobsResponseCopyWith(
          _MyJobsResponse value, $Res Function(_MyJobsResponse) _then) =
      __$MyJobsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      @JsonKey(name: 'data') MyJobsPaginationData? paginationData});

  @override
  $MyJobsPaginationDataCopyWith<$Res>? get paginationData;
}

/// @nodoc
class __$MyJobsResponseCopyWithImpl<$Res>
    implements _$MyJobsResponseCopyWith<$Res> {
  __$MyJobsResponseCopyWithImpl(this._self, this._then);

  final _MyJobsResponse _self;
  final $Res Function(_MyJobsResponse) _then;

  /// Create a copy of MyJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? paginationData = freezed,
  }) {
    return _then(_MyJobsResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paginationData: freezed == paginationData
          ? _self.paginationData
          : paginationData // ignore: cast_nullable_to_non_nullable
              as MyJobsPaginationData?,
    ));
  }

  /// Create a copy of MyJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyJobsPaginationDataCopyWith<$Res>? get paginationData {
    if (_self.paginationData == null) {
      return null;
    }

    return $MyJobsPaginationDataCopyWith<$Res>(_self.paginationData!, (value) {
      return _then(_self.copyWith(paginationData: value));
    });
  }
}

/// @nodoc
mixin _$MyJobsPaginationData {
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @JsonKey(name: 'data')
  List<DashboardJobModel> get jobs;
  @JsonKey(name: 'last_page')
  int? get lastPage;

  /// Create a copy of MyJobsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyJobsPaginationDataCopyWith<MyJobsPaginationData> get copyWith =>
      _$MyJobsPaginationDataCopyWithImpl<MyJobsPaginationData>(
          this as MyJobsPaginationData, _$identity);

  /// Serializes this MyJobsPaginationData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyJobsPaginationData &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other.jobs, jobs) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage,
      const DeepCollectionEquality().hash(jobs), lastPage);

  @override
  String toString() {
    return 'MyJobsPaginationData(currentPage: $currentPage, jobs: $jobs, lastPage: $lastPage)';
  }
}

/// @nodoc
abstract mixin class $MyJobsPaginationDataCopyWith<$Res> {
  factory $MyJobsPaginationDataCopyWith(MyJobsPaginationData value,
          $Res Function(MyJobsPaginationData) _then) =
      _$MyJobsPaginationDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<DashboardJobModel> jobs,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$MyJobsPaginationDataCopyWithImpl<$Res>
    implements $MyJobsPaginationDataCopyWith<$Res> {
  _$MyJobsPaginationDataCopyWithImpl(this._self, this._then);

  final MyJobsPaginationData _self;
  final $Res Function(MyJobsPaginationData) _then;

  /// Create a copy of MyJobsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? jobs = null,
    Object? lastPage = freezed,
  }) {
    return _then(_self.copyWith(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      jobs: null == jobs
          ? _self.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<DashboardJobModel>,
      lastPage: freezed == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MyJobsPaginationData implements MyJobsPaginationData {
  const _MyJobsPaginationData(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') final List<DashboardJobModel> jobs = const [],
      @JsonKey(name: 'last_page') this.lastPage})
      : _jobs = jobs;
  factory _MyJobsPaginationData.fromJson(Map<String, dynamic> json) =>
      _$MyJobsPaginationDataFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<DashboardJobModel> _jobs;
  @override
  @JsonKey(name: 'data')
  List<DashboardJobModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;

  /// Create a copy of MyJobsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyJobsPaginationDataCopyWith<_MyJobsPaginationData> get copyWith =>
      __$MyJobsPaginationDataCopyWithImpl<_MyJobsPaginationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyJobsPaginationDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyJobsPaginationData &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage,
      const DeepCollectionEquality().hash(_jobs), lastPage);

  @override
  String toString() {
    return 'MyJobsPaginationData(currentPage: $currentPage, jobs: $jobs, lastPage: $lastPage)';
  }
}

/// @nodoc
abstract mixin class _$MyJobsPaginationDataCopyWith<$Res>
    implements $MyJobsPaginationDataCopyWith<$Res> {
  factory _$MyJobsPaginationDataCopyWith(_MyJobsPaginationData value,
          $Res Function(_MyJobsPaginationData) _then) =
      __$MyJobsPaginationDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<DashboardJobModel> jobs,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$MyJobsPaginationDataCopyWithImpl<$Res>
    implements _$MyJobsPaginationDataCopyWith<$Res> {
  __$MyJobsPaginationDataCopyWithImpl(this._self, this._then);

  final _MyJobsPaginationData _self;
  final $Res Function(_MyJobsPaginationData) _then;

  /// Create a copy of MyJobsPaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPage = freezed,
    Object? jobs = null,
    Object? lastPage = freezed,
  }) {
    return _then(_MyJobsPaginationData(
      currentPage: freezed == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      jobs: null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<DashboardJobModel>,
      lastPage: freezed == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
