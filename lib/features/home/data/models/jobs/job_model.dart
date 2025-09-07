import 'package:json_annotation/json_annotation.dart';
import 'job_company_model.dart';

part 'job_model.g.dart';

@JsonSerializable()
class JobModel {
  final int id;
  final String? title;
  final String? location;
  @JsonKey(name: 'date_posted')
  final String? datePosted;
  final String? description;
  final List<String>? skills;
  @JsonKey(name: 'min_salary')
  final String? minSalary;
  @JsonKey(name: 'max_salary')
  final String? maxSalary;
  @JsonKey(name: 'salary_negotiable')
  final bool? salaryNegotiable;
  @JsonKey(name: 'payment_period')
  final String? paymentPeriod;
  @JsonKey(name: 'payment_currency')
  final String? paymentCurrency;
  @JsonKey(name: 'hiring_multiple_candidates')
  final bool? hiringMultipleCandidates;
  @JsonKey(name: 'is_saved',defaultValue: false)
  final bool? saved;
  @JsonKey(name: 'user')
  final JobCompanyModel company;



  JobModel({
    required this.id,
    required this.title,
    this.location,
    this.datePosted,
    this.description,
    this.skills,
    this.minSalary,
    this.maxSalary,
    this.salaryNegotiable,
    this.paymentPeriod,
    this.paymentCurrency,
    this.hiringMultipleCandidates,
    this.saved,
    required this.company,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobModelToJson(this);


  JobModel copyWith({
    int? id,
    String? title,
    String? location,
    String? datePosted,
    String? description,
    List<String>? skills,
    String? minSalary,
    String? maxSalary,
    bool? salaryNegotiable,
    String? paymentPeriod,
    String? paymentCurrency,
    bool? hiringMultipleCandidates,
    bool? saved,
    JobCompanyModel? company,
  }) {
    return JobModel(
      id: id ?? this.id,
      title: title ?? this.title,
      location: location ?? this.location,
      datePosted: datePosted ?? this.datePosted,
      description: description ?? this.description,
      skills: skills ?? this.skills,
      minSalary: minSalary ?? this.minSalary,
      maxSalary: maxSalary ?? this.maxSalary,
      salaryNegotiable: salaryNegotiable ?? this.salaryNegotiable,
      paymentPeriod: paymentPeriod ?? this.paymentPeriod,
      paymentCurrency: paymentCurrency ?? this.paymentCurrency,
      hiringMultipleCandidates: hiringMultipleCandidates ?? this.hiringMultipleCandidates,
      saved: saved ?? this.saved,
      company: company ?? this.company,
    );
  }
}