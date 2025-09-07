import 'package:json_annotation/json_annotation.dart';
import '../dashboard_screen/dashboard_job_model.dart';
import 'applicant_user_model.dart';

part 'job_proposal_model.g.dart';

@JsonSerializable()
class JobProposalModel {
  final int id;
  final String proposal;
  final String status;
  @JsonKey(name: 'created_at')
  final String createdAt;
  final ApplicantUserModel user;


  JobProposalModel({
    required this.id,
    required this.proposal,
    required this.status,
    required this.createdAt,
    required this.user,

  });

  factory JobProposalModel.fromJson(Map<String, dynamic> json) =>
      _$JobProposalModelFromJson(json);

  Map<String, dynamic> toJson() => _$JobProposalModelToJson(this);
}