import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart'; // 1. أضفنا هذا السطر
part 'company_model.g.dart';

@freezed // 2. أضفنا هذه العلامة
abstract class CompanyModel with _$CompanyModel {
  // 3. أصبحنا نستخدم factory constructor
  const factory CompanyModel({
    required int id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'background_url') String? backgroundUrl,
    String? cv,
    String? location,
    String? description,
    bool? blocked,
    @JsonKey(name: 'jobs_count') String? jobsCount,
    @JsonKey(name: 'average_rating') double? averageRating,
    @JsonKey(name: 'review_count') int? reviewCount,
    @Default(false) bool? following,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}