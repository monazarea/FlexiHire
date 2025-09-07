import 'package:json_annotation/json_annotation.dart';
// سنقوم باستيراد موديل الشركة المشترك الذي لدينا بالفعل
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';

part 'all_companies_response.g.dart';

@JsonSerializable()
class AllCompaniesResponse {
  final String? message;
  @JsonKey(name: 'data')
  final CompaniesPaginationData? paginationData;

  AllCompaniesResponse({this.message, this.paginationData});

  factory AllCompaniesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllCompaniesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllCompaniesResponseToJson(this);
}

@JsonSerializable()
class CompaniesPaginationData {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  @JsonKey(name: 'data')
  final List<CompanyModel>? companies;

  @JsonKey(name: 'last_page')
  final int? lastPage;

  final int? total;

  CompaniesPaginationData({
    this.currentPage,
    this.companies,
    this.lastPage,
    this.total,
  });

  factory CompaniesPaginationData.fromJson(Map<String, dynamic> json) =>
      _$CompaniesPaginationDataFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesPaginationDataToJson(this);
}
