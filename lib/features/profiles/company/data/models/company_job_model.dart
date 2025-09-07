import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_job_model.freezed.dart';
part 'company_job_model.g.dart';

@freezed
abstract class CompanyJobModel with _$CompanyJobModel {
  const factory CompanyJobModel({
    required int id,
    required String title,
    String? location,
    @JsonKey(name: 'date_posted') String? datePosted,
    @JsonKey(name: 'min_salary') String? minSalary,
    @JsonKey(name: 'max_salary') String? maxSalary,
  }) = _CompanyJobModel;

  factory CompanyJobModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyJobModelFromJson(json);
}