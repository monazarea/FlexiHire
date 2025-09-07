import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'company_job_model.dart';
import 'company_review_model.dart';

part 'company_profile_response.freezed.dart';
part 'company_profile_response.g.dart';

// --- الكلاس الرئيسي للاستجابة ---
@freezed
abstract class CompanyProfileResponse with _$CompanyProfileResponse {
  const factory CompanyProfileResponse({
    bool? status,
    @JsonKey(name: 'company') CompanyProfileData? data,
  }) = _CompanyProfileResponse;

  factory CompanyProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileResponseFromJson(json);
}

// --- الموديل الرئيسي الذي يحتوي على كل بيانات الشركة ---
@freezed
abstract class CompanyProfileData with _$CompanyProfileData {
  const factory CompanyProfileData({
    required int id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'background_url') String? backgroundUrl,
    String? description,
    String? location,
    String? type,
    @Default(false) bool? following,
    @Default([]) List<CompanyJobModel> jobs,
    CompanyReviewsData? reviews,
  }) = _CompanyProfileData;

  factory CompanyProfileData.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileDataFromJson(json);
}

// --- كلاس خاص بمعلومات التقييمات ---
@freezed
abstract class CompanyReviewsData with _$CompanyReviewsData {
  const factory CompanyReviewsData({
    @JsonKey(name: 'items') @Default([]) List<CompanyReviewModel> reviews,
    @JsonKey(name: 'average_rating') double? averageRating,
    int? count,
    @JsonKey(name: 'has_reviewed') bool? hasReviewed,
    @JsonKey(name: 'user_review') CompanyReviewModel? userReview,
  }) = _CompanyReviewsData;

  factory CompanyReviewsData.fromJson(Map<String, dynamic> json) =>
      _$CompanyReviewsDataFromJson(json);
}

