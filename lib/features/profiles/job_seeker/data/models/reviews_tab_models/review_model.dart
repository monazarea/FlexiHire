import 'package:json_annotation/json_annotation.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';

part 'review_model.g.dart';

@JsonSerializable()
class ReviewModel {
  final int id;

  @JsonKey(name: 'user_id')
  final String? userId;

  @JsonKey(name: 'company_id')
  final String? companyId;

  @JsonKey(fromJson: _parseRating)
  final double rating;

  final String? comment;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  final CompanyModel company;

  ReviewModel({
    required this.id,
    this.userId,
    this.companyId,
    required this.rating,
    this.comment,
    this.createdAt,
    this.updatedAt,
    required this.company,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

// دالة مساعدة لتحويل التقييم من نص إلى رقم عشري
double _parseRating(String rating) {
  return double.tryParse(rating) ?? 0.0;
}