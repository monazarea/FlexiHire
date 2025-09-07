import 'package:json_annotation/json_annotation.dart';
import '../../../dashboard/data/models/applicants/pagination_data.dart';
import 'saved_job_item_model.dart';

part 'saved_jobs_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SavedJobsResponse {
  final bool status;
  final String message;
  final PaginationData<SavedJobItemModel> data;

  SavedJobsResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory SavedJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedJobsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SavedJobsResponseToJson(this);
}