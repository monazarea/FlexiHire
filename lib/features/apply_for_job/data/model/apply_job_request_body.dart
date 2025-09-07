import 'package:json_annotation/json_annotation.dart';

part 'apply_job_request_body.g.dart';

@JsonSerializable()
class ApplyJobRequestBody {
  @JsonKey(name: 'job_id')
  final int jobId;
  final String proposal;

  ApplyJobRequestBody({
    required this.jobId,
    required this.proposal,
  });

  Map<String, dynamic> toJson() => _$ApplyJobRequestBodyToJson(this);
}