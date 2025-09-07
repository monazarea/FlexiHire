import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../data/models/update_description/update_description_response_body.dart';

part 'update_description_state.freezed.dart';

@freezed
abstract class UpdateDescriptionState with _$UpdateDescriptionState {
  const factory UpdateDescriptionState.initial() = _Initial;

  const factory UpdateDescriptionState.descriptionLoading() = DescriptionLoading; // <--- التعديل هنا
  const factory UpdateDescriptionState.DescriptionSuccess() = DescriptionSuccess;
  const factory UpdateDescriptionState.DescriptionError(ApiErrorModel apiErrorModel) = DescriptionError;
}