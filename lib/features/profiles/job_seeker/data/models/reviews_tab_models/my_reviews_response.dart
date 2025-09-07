import 'package:json_annotation/json_annotation.dart';
import 'review_model.dart';

part 'my_reviews_response.g.dart';

@JsonSerializable()
class MyReviewsResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'data')
  final ReviewsPaginationData? paginationData;

  MyReviewsResponse({this.status, this.message, this.paginationData});

  factory MyReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyReviewsResponseFromJson(json);
}

@JsonSerializable()
class ReviewsPaginationData {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  @JsonKey(name: 'data')
  final List<ReviewModel>? reviews;

  @JsonKey(name: 'last_page')
  final int? lastPage;

  ReviewsPaginationData({this.currentPage, this.reviews, this.lastPage});

  factory ReviewsPaginationData.fromJson(Map<String, dynamic> json) =>
      _$ReviewsPaginationDataFromJson(json);
}