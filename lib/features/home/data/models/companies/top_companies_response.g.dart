// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_companies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopCompaniesResponse _$TopCompaniesResponseFromJson(
        Map<String, dynamic> json) =>
    TopCompaniesResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopCompaniesResponseToJson(
        TopCompaniesResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
