// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobRequestBody _$JobRequestBodyFromJson(Map<String, dynamic> json) =>
    JobRequestBody(
      title: json['title'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      minSalary: (json['min_salary'] as num).toInt(),
      maxSalary: (json['max_salary'] as num).toInt(),
      salaryNegotiable: json['salary_negotiable'] as bool,
      paymentPeriod: json['payment_period'] as String,
      paymentCurrency: json['payment_currency'] as String,
      hiringMultipleCandidates: json['hiring_multiple_candidates'] as bool,
    );

Map<String, dynamic> _$JobRequestBodyToJson(JobRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'location': instance.location,
      'description': instance.description,
      'skills': instance.skills,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'salary_negotiable': instance.salaryNegotiable,
      'payment_period': instance.paymentPeriod,
      'payment_currency': instance.paymentCurrency,
      'hiring_multiple_candidates': instance.hiringMultipleCandidates,
    };
