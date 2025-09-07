import 'package:json_annotation/json_annotation.dart';
import 'job_pagination_data.dart';

part 'jobs_list_response.g.dart';

@JsonSerializable()
class JobsListResponse {
  final String? message;
  final JobPaginationData? data;

  JobsListResponse({
    this.message,
    this.data,
  });

  factory JobsListResponse.fromJson(Map<String, dynamic> json) =>
      _$JobsListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobsListResponseToJson(this);
}