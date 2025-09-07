import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_image_state.freezed.dart';

@freezed
class UpdateImageState with _$UpdateImageState {
  const factory UpdateImageState.initial() = _Initial;

  // حالات مخصصة لتحديث صورة البروفاイル
  const factory UpdateImageState.profileImageLoading() = ProfileImageLoading;
  const factory UpdateImageState.profileImageSuccess(String newImageUrl, String message) = ProfileImageSuccess;
  const factory UpdateImageState.profileImageError(String error) = ProfileImageError;

  // حالات مخصصة لتحديث صورة الخلفية
  const factory UpdateImageState.coverImageLoading() = CoverImageLoading;
  const factory UpdateImageState.coverImageSuccess(String newImageUrl, String message) = CoverImageSuccess;
  const factory UpdateImageState.coverImageError(String error) = CoverImageError;
}