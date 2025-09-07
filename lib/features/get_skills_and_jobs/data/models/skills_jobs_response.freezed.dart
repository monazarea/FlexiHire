// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skills_jobs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillsJobsResponse {
// نستخدم List<SkillModel> بدلاً من List<dynamic>
  List<SkillModel> get skills;
  List<JobTitleModel> get jobs;

  /// Create a copy of SkillsJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillsJobsResponseCopyWith<SkillsJobsResponse> get copyWith =>
      _$SkillsJobsResponseCopyWithImpl<SkillsJobsResponse>(
          this as SkillsJobsResponse, _$identity);

  /// Serializes this SkillsJobsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillsJobsResponse &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality().equals(other.jobs, jobs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(jobs));

  @override
  String toString() {
    return 'SkillsJobsResponse(skills: $skills, jobs: $jobs)';
  }
}

/// @nodoc
abstract mixin class $SkillsJobsResponseCopyWith<$Res> {
  factory $SkillsJobsResponseCopyWith(
          SkillsJobsResponse value, $Res Function(SkillsJobsResponse) _then) =
      _$SkillsJobsResponseCopyWithImpl;
  @useResult
  $Res call({List<SkillModel> skills, List<JobTitleModel> jobs});
}

/// @nodoc
class _$SkillsJobsResponseCopyWithImpl<$Res>
    implements $SkillsJobsResponseCopyWith<$Res> {
  _$SkillsJobsResponseCopyWithImpl(this._self, this._then);

  final SkillsJobsResponse _self;
  final $Res Function(SkillsJobsResponse) _then;

  /// Create a copy of SkillsJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skills = null,
    Object? jobs = null,
  }) {
    return _then(_self.copyWith(
      skills: null == skills
          ? _self.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillModel>,
      jobs: null == jobs
          ? _self.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobTitleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SkillsJobsResponse implements SkillsJobsResponse {
  const _SkillsJobsResponse(
      {required final List<SkillModel> skills,
      required final List<JobTitleModel> jobs})
      : _skills = skills,
        _jobs = jobs;
  factory _SkillsJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$SkillsJobsResponseFromJson(json);

// نستخدم List<SkillModel> بدلاً من List<dynamic>
  final List<SkillModel> _skills;
// نستخدم List<SkillModel> بدلاً من List<dynamic>
  @override
  List<SkillModel> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<JobTitleModel> _jobs;
  @override
  List<JobTitleModel> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  /// Create a copy of SkillsJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkillsJobsResponseCopyWith<_SkillsJobsResponse> get copyWith =>
      __$SkillsJobsResponseCopyWithImpl<_SkillsJobsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SkillsJobsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillsJobsResponse &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_jobs));

  @override
  String toString() {
    return 'SkillsJobsResponse(skills: $skills, jobs: $jobs)';
  }
}

/// @nodoc
abstract mixin class _$SkillsJobsResponseCopyWith<$Res>
    implements $SkillsJobsResponseCopyWith<$Res> {
  factory _$SkillsJobsResponseCopyWith(
          _SkillsJobsResponse value, $Res Function(_SkillsJobsResponse) _then) =
      __$SkillsJobsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<SkillModel> skills, List<JobTitleModel> jobs});
}

/// @nodoc
class __$SkillsJobsResponseCopyWithImpl<$Res>
    implements _$SkillsJobsResponseCopyWith<$Res> {
  __$SkillsJobsResponseCopyWithImpl(this._self, this._then);

  final _SkillsJobsResponse _self;
  final $Res Function(_SkillsJobsResponse) _then;

  /// Create a copy of SkillsJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skills = null,
    Object? jobs = null,
  }) {
    return _then(_SkillsJobsResponse(
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillModel>,
      jobs: null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobTitleModel>,
    ));
  }
}

// dart format on
