import 'package:json_annotation/json_annotation.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

part 'applied_job_model.g.dart';

@JsonSerializable()
class AppliedJobModel {
  final int id;
  // هذا الكائن يحتوي على كل تفاصيل الوظيفة، بما في ذلك معلومات الشركة (job.company)
  final JobModel job;

  @JsonKey(name: 'proposal_date')
  final String? proposalDate;
  final String? proposal;
  final String? status;

  AppliedJobModel({
    required this.id,
    required this.job,
    this.proposalDate,
    this.proposal,
    this.status,
  });

  factory AppliedJobModel.fromJson(Map<String, dynamic> json) =>
      _$AppliedJobModelFromJson(json);
}