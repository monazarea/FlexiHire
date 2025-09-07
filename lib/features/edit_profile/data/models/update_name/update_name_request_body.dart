import 'package:json_annotation/json_annotation.dart';

part 'update_name_request_body.g.dart';

@JsonSerializable()
class UpdateNameRequestBody {
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;

  UpdateNameRequestBody({
    required this.firstName,
    required this.lastName,
  });

  Map<String, dynamic> toJson() => _$UpdateNameRequestBodyToJson(this);
}