// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_companies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCompaniesResponse _$AllCompaniesResponseFromJson(
        Map<String, dynamic> json) =>
    AllCompaniesResponse(
      message: json['message'] as String?,
      paginationData: json['data'] == null
          ? null
          : CompaniesPaginationData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllCompaniesResponseToJson(
        AllCompaniesResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.paginationData,
    };

CompaniesPaginationData _$CompaniesPaginationDataFromJson(
        Map<String, dynamic> json) =>
    CompaniesPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      companies: (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CompaniesPaginationDataToJson(
        CompaniesPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.companies,
      'last_page': instance.lastPage,
      'total': instance.total,
    };
