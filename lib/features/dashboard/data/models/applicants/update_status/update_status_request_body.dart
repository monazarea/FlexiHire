import 'package:json_annotation/json_annotation.dart';

part 'update_status_request_body.g.dart';

@JsonSerializable()
class UpdateStatusRequestBody {
  final String status;

  UpdateStatusRequestBody({required this.status});

  Map<String, dynamic> toJson() => _$UpdateStatusRequestBodyToJson(this);
}