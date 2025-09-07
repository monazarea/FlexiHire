import 'package:freezed_annotation/freezed_annotation.dart';

import 'dashboard_job_model.dart';

part 'my_jobs_response.freezed.dart';
part 'my_jobs_response.g.dart';

@freezed
abstract class MyJobsResponse with _$MyJobsResponse {
  const factory MyJobsResponse({
    bool? status,
    String? message,
    @JsonKey(name: 'data') MyJobsPaginationData? paginationData,
  }) = _MyJobsResponse;

  factory MyJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyJobsResponseFromJson(json);
}

@freezed
abstract class MyJobsPaginationData with _$MyJobsPaginationData {
  const factory MyJobsPaginationData({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') @Default([]) List<DashboardJobModel> jobs,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _MyJobsPaginationData;

  factory MyJobsPaginationData.fromJson(Map<String, dynamic> json) =>
      _$MyJobsPaginationDataFromJson(json);
}