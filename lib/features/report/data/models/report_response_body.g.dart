// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportResponseBody _$ReportResponseBodyFromJson(Map<String, dynamic> json) =>
    ReportResponseBody(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ReportResponseBodyToJson(ReportResponseBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
