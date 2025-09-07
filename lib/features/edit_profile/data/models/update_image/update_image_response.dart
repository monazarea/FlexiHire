import 'package:json_annotation/json_annotation.dart';

part 'update_image_response.g.dart';

@JsonSerializable()
class UpdateImageResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  UpdateImageResponse({this.status, this.message, this.imageUrl});

  factory UpdateImageResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateImageResponseFromJson(json);
}