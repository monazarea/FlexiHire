// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_title_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobTitleModel {
  int get id;
  String get name;

  /// Create a copy of JobTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobTitleModelCopyWith<JobTitleModel> get copyWith =>
      _$JobTitleModelCopyWithImpl<JobTitleModel>(
          this as JobTitleModel, _$identity);

  /// Serializes this JobTitleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobTitleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'JobTitleModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $JobTitleModelCopyWith<$Res> {
  factory $JobTitleModelCopyWith(
          JobTitleModel value, $Res Function(JobTitleModel) _then) =
      _$JobTitleModelCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$JobTitleModelCopyWithImpl<$Res>
    implements $JobTitleModelCopyWith<$Res> {
  _$JobTitleModelCopyWithImpl(this._self, this._then);

  final JobTitleModel _self;
  final $Res Function(JobTitleModel) _then;

  /// Create a copy of JobTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _JobTitleModel implements JobTitleModel {
  const _JobTitleModel({required this.id, required this.name});
  factory _JobTitleModel.fromJson(Map<String, dynamic> json) =>
      _$JobTitleModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of JobTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JobTitleModelCopyWith<_JobTitleModel> get copyWith =>
      __$JobTitleModelCopyWithImpl<_JobTitleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JobTitleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobTitleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'JobTitleModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$JobTitleModelCopyWith<$Res>
    implements $JobTitleModelCopyWith<$Res> {
  factory _$JobTitleModelCopyWith(
          _JobTitleModel value, $Res Function(_JobTitleModel) _then) =
      __$JobTitleModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$JobTitleModelCopyWithImpl<$Res>
    implements _$JobTitleModelCopyWith<$Res> {
  __$JobTitleModelCopyWithImpl(this._self, this._then);

  final _JobTitleModel _self;
  final $Res Function(_JobTitleModel) _then;

  /// Create a copy of JobTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_JobTitleModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
