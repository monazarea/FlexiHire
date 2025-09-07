import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_job_model.freezed.dart';
part 'dashboard_job_model.g.dart';


int? _stringOrIntToInt(dynamic value) {
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class DashboardJobModel with _$DashboardJobModel {


  const factory DashboardJobModel({
    required int id,
    required String title,
    @JsonKey(name: 'user_id',fromJson: _stringOrIntToInt) int? userId,
    String? location,
    @JsonKey(name: 'date_posted') String? datePosted,
    String? description,
    @Default([]) List<String> skills,
    // --- تم تعديل هذا الجزء ---
    // V-- هنا التعديل المهم --V
    @JsonKey(name: 'min_salary', fromJson: _stringOrIntToInt)
    int? minSalary,

    @JsonKey(name: 'max_salary', fromJson: _stringOrIntToInt)
    int? maxSalary,

    @JsonKey(name: 'salary_negotiable') bool? salaryNegotiable,
    @JsonKey(name: 'payment_period') String? paymentPeriod,
    @JsonKey(name: 'applications_count') String? applicationsCount,
    @JsonKey(name: 'payment_currency') String? paymentCurrency,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'hiring_multiple_candidates') bool? hiringMultipleCandidates,
  }) = _DashboardJobModel;

  factory DashboardJobModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardJobModelFromJson(json);
}

