import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/profiles/company/data/models/company_profile_response.dart';

part 'company_profile_state.freezed.dart';

@freezed
class CompanyProfileState with _$CompanyProfileState {
  const factory CompanyProfileState.initial() = _Initial;
  const factory CompanyProfileState.loading() = CompanyProfileLoading;
  const factory CompanyProfileState.success(CompanyProfileResponse data) = CompanyProfileSuccess;
  const factory CompanyProfileState.error(ApiErrorModel apiErrorModel) = CompanyProfileError;
}