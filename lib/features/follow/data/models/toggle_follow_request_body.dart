import 'package:json_annotation/json_annotation.dart';

part 'toggle_follow_request_body.g.dart';

@JsonSerializable()
class ToggleFollowRequestBody {
  @JsonKey(name: 'company_id')
  final int companyId;

  ToggleFollowRequestBody({
    required this.companyId,
  });

  Map<String, dynamic> toJson() => _$ToggleFollowRequestBodyToJson(this);
}