// lib/features/report/data/models/report_response_body.dart

import 'package:json_annotation/json_annotation.dart';
part 'report_response_body.g.dart';

@JsonSerializable()
class ReportResponseBody {
  final bool? status;
  final String? message;

  ReportResponseBody({this.status, this.message});

  factory ReportResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseBodyFromJson(json);
}