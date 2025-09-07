import 'package:json_annotation/json_annotation.dart';

part 'change_password_response.g.dart';

@JsonSerializable()
class ChangePasswordResponse {
  final bool? status;
  final String? message;

  ChangePasswordResponse({this.status, this.message});

  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseFromJson(json);
}