import 'package:json_annotation/json_annotation.dart';
part 'update_email_response.g.dart';

@JsonSerializable()
class UpdateEmailResponse {
  final bool? status;
  final String? message;
  final String? email;
  UpdateEmailResponse({this.status, this.message, this.email});

  factory UpdateEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailResponseFromJson(json);
}