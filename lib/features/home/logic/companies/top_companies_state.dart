import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';

part 'top_companies_state.freezed.dart';

@freezed
class TopCompaniesState with _$TopCompaniesState{
  const factory TopCompaniesState.initial() = _Initial;

  const factory TopCompaniesState.topCompaniesLoading() = TopCompaniesLoading;
  const factory TopCompaniesState.topCompaniesSuccess(List<CompanyModel> companies) = TopCompaniesSuccess;
  const factory TopCompaniesState.topCompaniesError(ApiErrorModel apiErrorModel) = TopCompaniesError;

}