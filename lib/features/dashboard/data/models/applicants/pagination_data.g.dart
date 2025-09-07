// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationData<T> _$PaginationDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginationData<T>(
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginationDataToJson<T>(
  PaginationData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'total': instance.total,
      'data': instance.data.map(toJsonT).toList(),
    };
