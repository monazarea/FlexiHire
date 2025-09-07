import 'package:json_annotation/json_annotation.dart';

part 'rate_company_request_body.g.dart';

@JsonSerializable()
class RateCompanyRequestBody {
  @JsonKey(name: 'company_id')
  final int companyId;
  final int rating;
  final String comment;

  RateCompanyRequestBody({
    required this.companyId,
    required this.rating,
    required this.comment,
  });

  Map<String, dynamic> toJson() => _$RateCompanyRequestBodyToJson(this);
}