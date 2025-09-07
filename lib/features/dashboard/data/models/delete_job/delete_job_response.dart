import 'package:json_annotation/json_annotation.dart';

part 'delete_job_response.g.dart';

@JsonSerializable()
class DeleteJobResponse {
  final bool? status;
  final String? message;

  DeleteJobResponse({this.status, this.message});

  factory DeleteJobResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteJobResponseFromJson(json);
}