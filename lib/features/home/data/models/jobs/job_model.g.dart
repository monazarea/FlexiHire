// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobModel _$JobModelFromJson(Map<String, dynamic> json) => JobModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      location: json['location'] as String?,
      datePosted: json['date_posted'] as String?,
      description: json['description'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      minSalary: json['min_salary'] as String?,
      maxSalary: json['max_salary'] as String?,
      salaryNegotiable: json['salary_negotiable'] as bool?,
      paymentPeriod: json['payment_period'] as String?,
      paymentCurrency: json['payment_currency'] as String?,
      hiringMultipleCandidates: json['hiring_multiple_candidates'] as bool?,
      saved: json['is_saved'] as bool? ?? false,
      company: JobCompanyModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobModelToJson(JobModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'date_posted': instance.datePosted,
      'description': instance.description,
      'skills': instance.skills,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'salary_negotiable': instance.salaryNegotiable,
      'payment_period': instance.paymentPeriod,
      'payment_currency': instance.paymentCurrency,
      'hiring_multiple_candidates': instance.hiringMultipleCandidates,
      'is_saved': instance.saved,
      'user': instance.company,
    };
