import 'package:json_annotation/json_annotation.dart';
part 'reset_password_response_body.g.dart';

@JsonSerializable()
class ResetPasswordResponseBody {
  final bool? status;
  final String? message;

  ResetPasswordResponseBody({this.status, this.message});

  factory ResetPasswordResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseBodyFromJson(json);
}