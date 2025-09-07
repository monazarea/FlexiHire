import 'package:json_annotation/json_annotation.dart';
import 'job_seeker_list_item_model.dart';

part 'all_job_seekers_response.g.dart';

@JsonSerializable()
class AllJobSeekersResponse {
  final String? message;
  @JsonKey(name: 'data')
  final JobSeekersPaginationData? paginationData;

  AllJobSeekersResponse({this.message, this.paginationData});

  factory AllJobSeekersResponse.fromJson(Map<String, dynamic> json) =>
      _$AllJobSeekersResponseFromJson(json);
}

@JsonSerializable()
class JobSeekersPaginationData {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  @JsonKey(name: 'data')
  final List<JobSeekerListItemModel>? jobSeekers; // يستخدم الموديل الجديد

  @JsonKey(name: 'last_page')
  final int? lastPage;

  final int? total;

  JobSeekersPaginationData({
    this.currentPage,
    this.jobSeekers,
    this.lastPage,
    this.total,
  });

  factory JobSeekersPaginationData.fromJson(Map<String, dynamic> json) =>
      _$JobSeekersPaginationDataFromJson(json);
}
