import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/rate_company/data/models/rate_company_response.dart';

part 'rate_company_state.freezed.dart';

@freezed
class RateCompanyState with _$RateCompanyState {
  // تم تغيير أسماء الحالات لتكون مخصصة
  const factory RateCompanyState.initial() = _RateCompanyInitial;
  const factory RateCompanyState.submitting() = RateCompanySubmitting;
  const factory RateCompanyState.success(RateCompanyResponse response) = RateCompanySuccess;
  const factory RateCompanyState.error(ApiErrorModel apiErrorModel) = RateCompanyError;
}