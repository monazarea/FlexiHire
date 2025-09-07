
import 'package:json_annotation/json_annotation.dart';

part 'update_description_response_body.g.dart';

@JsonSerializable()
class UpdateDescriptionResponseBody {
  final bool status;
  final String message;
  final String? description; // ممكن تكون null لو مفيش وصف جديد مثلاً

  UpdateDescriptionResponseBody({required this.status, required this.message, this.description});

  factory UpdateDescriptionResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateDescriptionResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateDescriptionResponseBodyToJson(this);
}