import 'package:json_annotation/json_annotation.dart';

part 'applicant_user_model.g.dart';

@JsonSerializable()
class ApplicantUserModel {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final String? cv;
  final String? location;
  final String? description;

  ApplicantUserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.imageUrl,
    this.cv,
    this.location,
    this.description,
  });

  factory ApplicantUserModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicantUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicantUserModelToJson(this);
}