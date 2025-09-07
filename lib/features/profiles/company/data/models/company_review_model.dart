import 'package:json_annotation/json_annotation.dart';

part 'company_review_model.g.dart';

// --- موديل التقييم الواحد ---
@JsonSerializable()
class CompanyReviewModel {
  final int id;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(fromJson: _parseRating)
  final double rating;
  final String? comment;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  // بيانات المستخدم الذي كتب التقييم
  final ReviewerUserModel? user;

  CompanyReviewModel({
    required this.id,
    this.userId,
    required this.rating,
    this.comment,
    this.createdAt,
    this.user,
  });

  factory CompanyReviewModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyReviewModelFromJson(json);
}

// --- موديل المستخدم الذي كتب التقييم ---
@JsonSerializable()
class ReviewerUserModel {
  final int id;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  ReviewerUserModel({
    required this.id,
    this.firstName,
    this.lastName,
    this.imageUrl,
  });

  factory ReviewerUserModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewerUserModelFromJson(json);
}

// دالة مساعدة لتحويل التقييم من نص إلى رقم عشري
double _parseRating(dynamic rating) {
  if (rating is String) {
    return double.tryParse(rating) ?? 0.0;
  }
  if (rating is num) {
    return rating.toDouble();
  }
  return 0.0;
}