import 'package:json_annotation/json_annotation.dart';
part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final String token;

  ResetPasswordRequestBody({
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.token,
  });

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}