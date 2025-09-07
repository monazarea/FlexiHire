import 'package:json_annotation/json_annotation.dart';

part 'delete_review_response.g.dart';

@JsonSerializable()
class DeleteReviewResponse {
  final bool? status;
  final String? message;

  DeleteReviewResponse({this.status, this.message});

  factory DeleteReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteReviewResponseFromJson(json);
}