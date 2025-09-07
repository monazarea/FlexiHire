import 'package:json_annotation/json_annotation.dart';
import 'job_model.dart';

part 'job_pagination_data.g.dart';

@JsonSerializable()
class JobPaginationData {
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'data')
  final List<JobModel>? jobs;
  @JsonKey(name: 'last_page')
  final int? lastPage;
  final int? total;

  JobPaginationData({
    this.currentPage,
    this.jobs,
    this.lastPage,
    this.total,
  });

  factory JobPaginationData.fromJson(Map<String, dynamic> json) =>
      _$JobPaginationDataFromJson(json);

  Map<String, dynamic> toJson() => _$JobPaginationDataToJson(this);
}