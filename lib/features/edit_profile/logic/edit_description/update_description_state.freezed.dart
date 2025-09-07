// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_description_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDescriptionState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateDescriptionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateDescriptionState()';
  }
}

/// @nodoc
class $UpdateDescriptionStateCopyWith<$Res> {
  $UpdateDescriptionStateCopyWith(
      UpdateDescriptionState _, $Res Function(UpdateDescriptionState) __);
}

/// @nodoc

class _Initial implements UpdateDescriptionState {
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
    return 'UpdateDescriptionState.initial()';
  }
}

/// @nodoc

class DescriptionLoading implements UpdateDescriptionState {
  const DescriptionLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DescriptionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateDescriptionState.descriptionLoading()';
  }
}

/// @nodoc

class DescriptionSuccess implements UpdateDescriptionState {
  const DescriptionSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DescriptionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateDescriptionState.DescriptionSuccess()';
  }
}

/// @nodoc

class DescriptionError implements UpdateDescriptionState {
  const DescriptionError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of UpdateDescriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescriptionErrorCopyWith<DescriptionError> get copyWith =>
      _$DescriptionErrorCopyWithImpl<DescriptionError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescriptionError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'UpdateDescriptionState.DescriptionError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $DescriptionErrorCopyWith<$Res>
    implements $UpdateDescriptionStateCopyWith<$Res> {
  factory $DescriptionErrorCopyWith(
          DescriptionError value, $Res Function(DescriptionError) _then) =
      _$DescriptionErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$DescriptionErrorCopyWithImpl<$Res>
    implements $DescriptionErrorCopyWith<$Res> {
  _$DescriptionErrorCopyWithImpl(this._self, this._then);

  final DescriptionError _self;
  final $Res Function(DescriptionError) _then;

  /// Create a copy of UpdateDescriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(DescriptionError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
