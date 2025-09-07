// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followed_companies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowedCompaniesResponse _$FollowedCompaniesResponseFromJson(
        Map<String, dynamic> json) =>
    FollowedCompaniesResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationData: json['data'] == null
          ? null
          : FollowedCompaniesPaginationData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FollowedCompaniesResponseToJson(
        FollowedCompaniesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.paginationData,
    };

FollowedCompaniesPaginationData _$FollowedCompaniesPaginationDataFromJson(
        Map<String, dynamic> json) =>
    FollowedCompaniesPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      companies: (json['data'] as List<dynamic>?)
          ?.map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FollowedCompaniesPaginationDataToJson(
        FollowedCompaniesPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.companies,
      'last_page': instance.lastPage,
    };
