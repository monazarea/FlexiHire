// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardJobModel _$DashboardJobModelFromJson(Map<String, dynamic> json) =>
    _DashboardJobModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      userId: _stringOrIntToInt(json['user_id']),
      location: json['location'] as String?,
      datePosted: json['date_posted'] as String?,
      description: json['description'] as String?,
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minSalary: _stringOrIntToInt(json['min_salary']),
      maxSalary: _stringOrIntToInt(json['max_salary']),
      salaryNegotiable: json['salary_negotiable'] as bool?,
      paymentPeriod: json['payment_period'] as String?,
      applicationsCount: json['applications_count'] as String?,
      paymentCurrency: json['payment_currency'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      hiringMultipleCandidates: json['hiring_multiple_candidates'] as bool?,
    );

Map<String, dynamic> _$DashboardJobModelToJson(_DashboardJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'user_id': instance.userId,
      'location': instance.location,
      'date_posted': instance.datePosted,
      'description': instance.description,
      'skills': instance.skills,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'salary_negotiable': instance.salaryNegotiable,
      'payment_period': instance.paymentPeriod,
      'applications_count': instance.applicationsCount,
      'payment_currency': instance.paymentCurrency,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'hiring_multiple_candidates': instance.hiringMultipleCandidates,
    };
