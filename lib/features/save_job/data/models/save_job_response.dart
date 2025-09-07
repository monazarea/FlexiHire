import 'package:json_annotation/json_annotation.dart';

part 'save_job_response.g.dart';

@JsonSerializable()
class SaveJobResponse {
  final bool? status;
  final String? message;

  @JsonKey(name: 'is_saved')
  final bool? isSaved;

  SaveJobResponse({this.status, this.message, this.isSaved});

  factory SaveJobResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveJobResponseFromJson(json);
}