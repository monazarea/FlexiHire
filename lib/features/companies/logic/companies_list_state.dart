import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';

part 'companies_list_state.freezed.dart';

@freezed
class CompaniesListState with _$CompaniesListState {
  const factory CompaniesListState.initial() = _CompaniesListInitial;
  const factory CompaniesListState.loading() = CompaniesListLoading;
  const factory CompaniesListState.success({
    required List<CompanyModel> companies,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = CompaniesListSuccess;
  const factory CompaniesListState.error(ApiErrorModel apiErrorModel) = CompaniesListError;
}