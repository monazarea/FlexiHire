import 'package:json_annotation/json_annotation.dart';
import 'job_proposal_model.dart';
import 'pagination_data.dart';

part 'job_proposals_response.g.dart';

@JsonSerializable()
class JobProposalsResponse {
  final String message;
  @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson)
  final PaginationData<JobProposalModel> data;

  JobProposalsResponse({
    required this.message,
    required this.data,
  });

  factory JobProposalsResponse.fromJson(Map<String, dynamic> json) =>
      _$JobProposalsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobProposalsResponseToJson(this);
}

// الدوال المساعدة لتحويل الـ data
PaginationData<JobProposalModel> _dataFromJson(Map<String, dynamic> json) =>
    PaginationData<JobProposalModel>.fromJson(
        json, (jobJson) => JobProposalModel.fromJson(jobJson as Map<String, dynamic>));

// V-- تم تصحيح الخطأ هنا --V
Map<String, dynamic> _dataToJson(PaginationData<JobProposalModel> paginationData) =>
    paginationData.toJson((job) => job.toJson());