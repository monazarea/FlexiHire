import 'package:json_annotation/json_annotation.dart';
part 'update_email_request_body.g.dart';

@JsonSerializable()
class UpdateEmailRequestBody {
  final String email;
  UpdateEmailRequestBody({required this.email});
  Map<String, dynamic> toJson() => _$UpdateEmailRequestBodyToJson(this);
}