// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_name_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditNameState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditNameState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditNameState()';
  }
}

/// @nodoc
class $EditNameStateCopyWith<$Res> {
  $EditNameStateCopyWith(EditNameState _, $Res Function(EditNameState) __);
}

/// @nodoc

class _Initial implements EditNameState {
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
    return 'EditNameState.initial()';
  }
}

/// @nodoc

class EditNameLoading implements EditNameState {
  const EditNameLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditNameLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditNameState.editNameLoading()';
  }
}

/// @nodoc

class EditNameSuccess implements EditNameState {
  const EditNameSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditNameSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditNameState.editNameSuccess()';
  }
}

/// @nodoc

class EditNameError implements EditNameState {
  const EditNameError(this.apiErrorModel);

  final ApiErrorModel apiErrorModel;

  /// Create a copy of EditNameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditNameErrorCopyWith<EditNameError> get copyWith =>
      _$EditNameErrorCopyWithImpl<EditNameError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditNameError &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @override
  String toString() {
    return 'EditNameState.editNameError(apiErrorModel: $apiErrorModel)';
  }
}

/// @nodoc
abstract mixin class $EditNameErrorCopyWith<$Res>
    implements $EditNameStateCopyWith<$Res> {
  factory $EditNameErrorCopyWith(
          EditNameError value, $Res Function(EditNameError) _then) =
      _$EditNameErrorCopyWithImpl;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class _$EditNameErrorCopyWithImpl<$Res>
    implements $EditNameErrorCopyWith<$Res> {
  _$EditNameErrorCopyWithImpl(this._self, this._then);

  final EditNameError _self;
  final $Res Function(EditNameError) _then;

  /// Create a copy of EditNameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(EditNameError(
      null == apiErrorModel
          ? _self.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

// dart format on
