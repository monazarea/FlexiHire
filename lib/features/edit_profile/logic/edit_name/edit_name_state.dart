// lib/features/edit_profile/logic/edit_name/edit_name_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

part 'edit_name_state.freezed.dart';

@freezed
class EditNameState with _$EditNameState {
  const factory EditNameState.initial() = _Initial;

  // تم تخصيص الأسماء هنا
  const factory EditNameState.editNameLoading() = EditNameLoading;
  const factory EditNameState.editNameSuccess() = EditNameSuccess;
  const factory EditNameState.editNameError(ApiErrorModel apiErrorModel) = EditNameError;
}