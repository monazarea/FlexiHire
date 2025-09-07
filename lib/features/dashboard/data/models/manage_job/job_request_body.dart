import 'package:json_annotation/json_annotation.dart';

part 'job_request_body.g.dart';

@JsonSerializable()
class JobRequestBody {
  final String title;
  final String location;
  final String description;
  final List<String> skills;
  @JsonKey(name: 'min_salary')
  final int minSalary;
  @JsonKey(name: 'max_salary')
  final int maxSalary;
  @JsonKey(name: 'salary_negotiable')
  final bool salaryNegotiable;
  @JsonKey(name: 'payment_period')
  final String paymentPeriod;
  @JsonKey(name: 'payment_currency')
  final String paymentCurrency;
  @JsonKey(name: 'hiring_multiple_candidates')
  final bool hiringMultipleCandidates;

  JobRequestBody({
    required this.title,
    required this.location,
    required this.description,
    required this.skills,
    required this.minSalary,
    required this.maxSalary,
    required this.salaryNegotiable,
    required this.paymentPeriod,
    required this.paymentCurrency,
    required this.hiringMultipleCandidates,
  });

  Map<String, dynamic> toJson() => _$JobRequestBodyToJson(this);
}