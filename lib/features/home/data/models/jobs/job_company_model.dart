import 'package:json_annotation/json_annotation.dart';

part 'job_company_model.g.dart';

@JsonSerializable()
class JobCompanyModel {
  final int id;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? email;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'background_url')
  final String? backgroundUrl;
  final String? cv;
  final String? location;
  final String? description;

  JobCompanyModel({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.imageUrl,
    this.backgroundUrl,
    this.cv,
    this.location,
    this.description,
  });

  factory JobCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$JobCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobCompanyModelToJson(this);
}