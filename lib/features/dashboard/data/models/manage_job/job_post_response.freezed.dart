// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobPostResponse {
  bool? get status;
  String? get message;
  DashboardJobModel? get job;

  /// Create a copy of JobPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobPostResponseCopyWith<JobPostResponse> get copyWith =>
      _$JobPostResponseCopyWithImpl<JobPostResponse>(
          this as JobPostResponse, _$identity);

  /// Serializes this JobPostResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobPostResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, job);

  @override
  String toString() {
    return 'JobPostResponse(status: $status, message: $message, job: $job)';
  }
}

/// @nodoc
abstract mixin class $JobPostResponseCopyWith<$Res> {
  factory $JobPostResponseCopyWith(
          JobPostResponse value, $Res Function(JobPostResponse) _then) =
      _$JobPostResponseCopyWithImpl;
  @useResult
  $Res call({bool? status, String? message, DashboardJobModel? job});

  $DashboardJobModelCopyWith<$Res>? get job;
}

/// @nodoc
class _$JobPostResponseCopyWithImpl<$Res>
    implements $JobPostResponseCopyWith<$Res> {
  _$JobPostResponseCopyWithImpl(this._self, this._then);

  final JobPostResponse _self;
  final $Res Function(JobPostResponse) _then;

  /// Create a copy of JobPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? job = freezed,
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
      job: freezed == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as DashboardJobModel?,
    ));
  }

  /// Create a copy of JobPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardJobModelCopyWith<$Res>? get job {
    if (_self.job == null) {
      return null;
    }

    return $DashboardJobModelCopyWith<$Res>(_self.job!, (value) {
      return _then(_self.copyWith(job: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _JobPostResponse implements JobPostResponse {
  const _JobPostResponse({this.status, this.message, this.job});
  factory _JobPostResponse.fromJson(Map<String, dynamic> json) =>
      _$JobPostResponseFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final DashboardJobModel? job;

  /// Create a copy of JobPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JobPostResponseCopyWith<_JobPostResponse> get copyWith =>
      __$JobPostResponseCopyWithImpl<_JobPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JobPostResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobPostResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, job);

  @override
  String toString() {
    return 'JobPostResponse(status: $status, message: $message, job: $job)';
  }
}

/// @nodoc
abstract mixin class _$JobPostResponseCopyWith<$Res>
    implements $JobPostResponseCopyWith<$Res> {
  factory _$JobPostResponseCopyWith(
          _JobPostResponse value, $Res Function(_JobPostResponse) _then) =
      __$JobPostResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool? status, String? message, DashboardJobModel? job});

  @override
  $DashboardJobModelCopyWith<$Res>? get job;
}

/// @nodoc
class __$JobPostResponseCopyWithImpl<$Res>
    implements _$JobPostResponseCopyWith<$Res> {
  __$JobPostResponseCopyWithImpl(this._self, this._then);

  final _JobPostResponse _self;
  final $Res Function(_JobPostResponse) _then;

  /// Create a copy of JobPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? job = freezed,
  }) {
    return _then(_JobPostResponse(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as DashboardJobModel?,
    ));
  }

  /// Create a copy of JobPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardJobModelCopyWith<$Res>? get job {
    if (_self.job == null) {
      return null;
    }

    return $DashboardJobModelCopyWith<$Res>(_self.job!, (value) {
      return _then(_self.copyWith(job: value));
    });
  }
}

// dart format on
