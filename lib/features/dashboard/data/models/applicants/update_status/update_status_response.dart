import 'package:json_annotation/json_annotation.dart';
import 'update_status_data_model.dart';

part 'update_status_response.g.dart';

@JsonSerializable()
class UpdateStatusResponse {
  final bool status;
  final String message;
  final UpdateStatusDataModel data;

  UpdateStatusResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory UpdateStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateStatusResponseToJson(this);
}