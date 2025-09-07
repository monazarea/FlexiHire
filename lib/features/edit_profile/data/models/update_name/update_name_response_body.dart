import 'package:json_annotation/json_annotation.dart';

part 'update_name_response_body.g.dart';

@JsonSerializable()
class UpdateNameResponseBody {
  final bool status;
  final String message;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;

  UpdateNameResponseBody({
    required this.status,
    required this.message,
    required this.firstName,
    required this.lastName,
  });

  factory UpdateNameResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateNameResponseBodyFromJson(json);
}