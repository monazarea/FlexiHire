import 'package:json_annotation/json_annotation.dart';

part 'save_job_request_body.g.dart';

@JsonSerializable()
class SaveJobRequestBody {
  @JsonKey(name: 'job_id')
  final int jobId;

  SaveJobRequestBody({
    required this.jobId,
  });

  Map<String, dynamic> toJson() => _$SaveJobRequestBodyToJson(this);
}