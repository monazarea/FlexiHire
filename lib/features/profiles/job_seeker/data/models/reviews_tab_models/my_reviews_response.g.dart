// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyReviewsResponse _$MyReviewsResponseFromJson(Map<String, dynamic> json) =>
    MyReviewsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      paginationData: json['data'] == null
          ? null
          : ReviewsPaginationData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyReviewsResponseToJson(MyReviewsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.paginationData,
    };

ReviewsPaginationData _$ReviewsPaginationDataFromJson(
        Map<String, dynamic> json) =>
    ReviewsPaginationData(
      currentPage: (json['current_page'] as num?)?.toInt(),
      reviews: (json['data'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReviewsPaginationDataToJson(
        ReviewsPaginationData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.reviews,
      'last_page': instance.lastPage,
    };
