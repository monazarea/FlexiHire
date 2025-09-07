import 'package:json_annotation/json_annotation.dart';

part 'toggle_follow_response.g.dart';

@JsonSerializable()
class ToggleFollowResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'is_following')
  final bool? isFollowing;

  ToggleFollowResponse({this.status, this.message, this.isFollowing});

  factory ToggleFollowResponse.fromJson(Map<String, dynamic> json) =>
      _$ToggleFollowResponseFromJson(json);
}