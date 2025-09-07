import 'package:json_annotation/json_annotation.dart';
part 'update_location_request_body.g.dart';

@JsonSerializable()
class UpdateLocationRequestBody {
  final String location;
  UpdateLocationRequestBody({required this.location});
  Map<String, dynamic> toJson() => _$UpdateLocationRequestBodyToJson(this);
}