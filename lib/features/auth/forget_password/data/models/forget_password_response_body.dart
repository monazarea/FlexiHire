import 'package:json_annotation/json_annotation.dart';

part 'forget_password_response_body.g.dart';

@JsonSerializable()
class ForgetPasswordResponseBody {
  final bool status;
  final String message;

  ForgetPasswordResponseBody({
    required this.status,
    required this.message,
  });

  factory ForgetPasswordResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponseBodyFromJson(json);

  // Map<String, dynamic> toJson() => _$ForgetPasswordResponseModelToJson(this);
}
