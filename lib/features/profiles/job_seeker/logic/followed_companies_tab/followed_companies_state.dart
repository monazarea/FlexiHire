import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';

part 'followed_companies_state.freezed.dart';

@freezed
class FollowedCompaniesState with _$FollowedCompaniesState {
  const factory FollowedCompaniesState.initial() = FollowedCompaniesInitial;
  const factory FollowedCompaniesState.loading() = FollowedCompaniesLoading;
  const factory FollowedCompaniesState.success({
    required List<CompanyModel> companies,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = FollowedCompaniesSuccess;
  const factory FollowedCompaniesState.error(ApiErrorModel apiErrorModel) = FollowedCompaniesError;
}