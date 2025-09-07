// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_applicants_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobApplicantsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobApplicantsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobApplicantsState()';
  }
}

/// @nodoc
class $JobApplicantsStateCopyWith<$Res> {
  $JobApplicantsStateCopyWith(
      JobApplicantsState _, $Res Function(JobApplicantsState) __);
}

/// @nodoc

class _Initial implements JobApplicantsState {
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
    return 'JobApplicantsState.initial()';
  }
}

/// @nodoc

class ContentNotFound implements JobApplicantsState {
  const ContentNotFound();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ContentNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobApplicantsState.contentNotFound()';
  }
}

/// @nodoc

class JobApplicantsLoading implements JobApplicantsState {
  const JobApplicantsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is JobApplicantsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'JobApplicantsState.loading()';
  }
}

/// @nodoc

class JobApplicantsSuccess implements JobApplicantsState {
  const JobApplicantsSuccess(
      {required final List<JobProposalModel> applicants,
      required this.hasReachedMax,
      this.isLoadingMore = false})
      : _applicants = applicants;

  final List<JobProposalModel> _applicants;
  List<JobProposalModel> get applicants {
    if (_applicants is EqualUnmodifiableListView) return _applicants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_applicants);
  }

  final bool hasReachedMax;
  @JsonKey()
  final bool isLoadingMore;

  /// Create a copy of JobApplicantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobApplicantsSuccessCopyWith<JobApplicantsSuccess> get copyWith =>
      _$JobApplicantsSuccessCopyWithImpl<JobApplicantsSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobApplicantsSuccess &&
            const DeepCollectionEquality()
                .equals(other._applicants, _applicants) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_applicants),
      hasReachedMax,
      isLoadingMore);

  @override
  String toString() {
    return 'JobApplicantsState.success(applicants: $applicants, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
  }
}

/// @nodoc
abstract mixin class $JobApplicantsSuccessCopyWith<$Res>
    implements $JobApplicantsStateCopyWith<$Res> {
  factory $JobApplicantsSuccessCopyWith(JobApplicantsSuccess value,
          $Res Function(JobApplicantsSuccess) _then) =
      _$JobApplicantsSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<JobProposalModel> applicants,
      bool hasReachedMax,
      bool isLoadingMore});
}

/// @nodoc
class _$JobApplicantsSuccessCopyWithImpl<$Res>
    implements $JobApplicantsSuccessCopyWith<$Res> {
  _$JobApplicantsSuccessCopyWithImpl(this._self, this._then);

  final JobApplicantsSuccess _self;
  final $Res Function(JobApplicantsSuccess) _then;

  /// Create a copy of JobApplicantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? applicants = null,
    Object? hasReachedMax = null,
    Object? isLoadingMore = null,
  }) {
    return _then(JobApplicantsSuccess(
      applicants: null == applicants
          ? _self._applicants
          : applicants // ignore: cast_nullable_to_non_nullable
              as List<JobProposalModel>,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class JobApplicantsError implements JobApplicantsState {
  const JobApplicantsError({required this.error});

  final String error;

  /// Create a copy of JobApplicantsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobApplicantsErrorCopyWith<JobApplicantsError> get copyWith =>
      _$JobApplicantsErrorCopyWithImpl<JobApplicantsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobApplicantsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'JobApplicantsState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $JobApplicantsErrorCopyWith<$Res>
    implements $JobApplicantsStateCopyWith<$Res> {
  factory $JobApplicantsErrorCopyWith(
          JobApplicantsError value, $Res Function(JobApplicantsError) _then) =
      _$JobApplicantsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$JobApplicantsErrorCopyWithImpl<$Res>
    implements $JobApplicantsErrorCopyWith<$Res> {
  _$JobApplicantsErrorCopyWithImpl(this._self, this._then);

  final JobApplicantsError _self;
  final $Res Function(JobApplicantsError) _then;

  /// Create a copy of JobApplicantsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(JobApplicantsError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
