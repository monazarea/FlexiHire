import 'package:json_annotation/json_annotation.dart';
import 'company_model.dart';

part 'top_companies_response.g.dart';

@JsonSerializable()
class TopCompaniesResponse {
  final String? message;
  final List<CompanyModel>? data;

  TopCompaniesResponse({
    this.message,
    this.data,
  });

  factory TopCompaniesResponse.fromJson(Map<String, dynamic> json) =>
      _$TopCompaniesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopCompaniesResponseToJson(this);
}