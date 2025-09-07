
import 'package:json_annotation/json_annotation.dart';

part 'update_description_request_body.g.dart';

@JsonSerializable()
class UpdateDescriptionRequestBody {
  final String description;

  UpdateDescriptionRequestBody({required this.description});

  factory UpdateDescriptionRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateDescriptionRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateDescriptionRequestBodyToJson(this);
}