import 'package:json_annotation/json_annotation.dart';
part 'update_location_response.g.dart';

@JsonSerializable()
class UpdateLocationResponse{
  final bool? status;
  final String? message;
  final String? location;
  UpdateLocationResponse({this.status, this.message, this.location});

  factory UpdateLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateLocationResponseFromJson(json);
}