// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillModel {
  int get id;
  String get name;

  /// Create a copy of SkillModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillModelCopyWith<SkillModel> get copyWith =>
      _$SkillModelCopyWithImpl<SkillModel>(this as SkillModel, _$identity);

  /// Serializes this SkillModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'SkillModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $SkillModelCopyWith<$Res> {
  factory $SkillModelCopyWith(
          SkillModel value, $Res Function(SkillModel) _then) =
      _$SkillModelCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SkillModelCopyWithImpl<$Res> implements $SkillModelCopyWith<$Res> {
  _$SkillModelCopyWithImpl(this._self, this._then);

  final SkillModel _self;
  final $Res Function(SkillModel) _then;

  /// Create a copy of SkillModel
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
class _SkillModel implements SkillModel {
  const _SkillModel({required this.id, required this.name});
  factory _SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of SkillModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkillModelCopyWith<_SkillModel> get copyWith =>
      __$SkillModelCopyWithImpl<_SkillModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SkillModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'SkillModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$SkillModelCopyWith<$Res>
    implements $SkillModelCopyWith<$Res> {
  factory _$SkillModelCopyWith(
          _SkillModel value, $Res Function(_SkillModel) _then) =
      __$SkillModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$SkillModelCopyWithImpl<$Res> implements _$SkillModelCopyWith<$Res> {
  __$SkillModelCopyWithImpl(this._self, this._then);

  final _SkillModel _self;
  final $Res Function(_SkillModel) _then;

  /// Create a copy of SkillModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_SkillModel(
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
