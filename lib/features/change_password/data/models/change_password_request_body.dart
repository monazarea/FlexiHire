import 'package:json_annotation/json_annotation.dart';

part 'change_password_request_body.g.dart';

@JsonSerializable()
class ChangePasswordRequestBody {
  @JsonKey(name: 'old_password')
  final String oldPassword;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  ChangePasswordRequestBody({
    required this.oldPassword,
    required this.password,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);
}