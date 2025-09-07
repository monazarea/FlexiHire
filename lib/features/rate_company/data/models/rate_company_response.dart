import 'package:json_annotation/json_annotation.dart';

part 'rate_company_response.g.dart';

@JsonSerializable()
class RateCompanyResponse {
  final bool? status;
  final String? message;
  final SubmittedReviewData? review;

  RateCompanyResponse({this.status, this.message, this.review});

  factory RateCompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$RateCompanyResponseFromJson(json);
}

@JsonSerializable()
class SubmittedReviewData {
  final int id;
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'company_id')
  final int? companyId;
  final int? rating;
  final String? comment;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  // بيانات المستخدم الذي كتب التقييم
  final ReviewerUserData? user;

  SubmittedReviewData({
    required this.id,
    this.userId,
    this.companyId,
    this.rating,
    this.comment,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory SubmittedReviewData.fromJson(Map<String, dynamic> json) =>
      _$SubmittedReviewDataFromJson(json);
}

@JsonSerializable()
class ReviewerUserData {
  final int id;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  ReviewerUserData({
    required this.id,
    this.firstName,
    this.lastName,
    this.imageUrl,
  });

  factory ReviewerUserData.fromJson(Map<String, dynamic> json) =>
      _$ReviewerUserDataFromJson(json);
}