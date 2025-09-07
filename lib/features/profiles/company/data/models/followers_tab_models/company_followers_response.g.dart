// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_followers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyFollowersResponse _$CompanyFollowersResponseFromJson(
        Map<String, dynamic> json) =>
    CompanyFollowersResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationData: json['data'] == null
          ? null
          : FollowersPaginationData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyFollowersResponseToJson(
        CompanyFollowersResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.paginationData,
    };

FollowersPaginationData _$FollowersPaginationDataFromJson(
        Map<String, dynamic> json) =>
    FollowersPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      followers: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => JobSeekerListItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FollowersPaginationDataToJson(
        FollowersPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.followers,
      'last_page': instance.lastPage,
    };
