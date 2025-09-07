import 'package:json_annotation/json_annotation.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';

part 'followed_companies_response.g.dart';

@JsonSerializable()
class FollowedCompaniesResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'data')
  final FollowedCompaniesPaginationData? paginationData;

  FollowedCompaniesResponse({this.status, this.message, this.paginationData});

  factory FollowedCompaniesResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowedCompaniesResponseFromJson(json);
}

@JsonSerializable()
class FollowedCompaniesPaginationData {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  // هنا نستخدم اسم data للإشارة إلى قائمة الشركات
  // ونعيد استخدام CompanyModel الذي لدينا بالفعل
  @JsonKey(name: 'data')
  final List<CompanyModel>? companies;

  @JsonKey(name: 'last_page')
  final int? lastPage;

  FollowedCompaniesPaginationData({this.currentPage, this.companies, this.lastPage});

  factory FollowedCompaniesPaginationData.fromJson(Map<String, dynamic> json) =>
      _$FollowedCompaniesPaginationDataFromJson(json);
}