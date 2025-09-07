// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyJobModel _$CompanyJobModelFromJson(Map<String, dynamic> json) =>
    _CompanyJobModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      location: json['location'] as String?,
      datePosted: json['date_posted'] as String?,
      minSalary: json['min_salary'] as String?,
      maxSalary: json['max_salary'] as String?,
    );

Map<String, dynamic> _$CompanyJobModelToJson(_CompanyJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'date_posted': instance.datePosted,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
    };
