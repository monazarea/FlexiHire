import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/edit_profile/data/repos/edit_profile_repo.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import 'update_image_state.dart';

class UpdateProfileImageCubit extends Cubit<UpdateImageState> {
  final EditProfileRepo _repository;
  final ImagePicker _imagePicker = ImagePicker();

  UpdateProfileImageCubit(this._repository)
      : super(const UpdateImageState.initial());

  void pickAndUploadImage() async {
    final XFile? pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;

    emit(const UpdateImageState.profileImageLoading());
    final result = await _repository.updateProfileImage(File(pickedFile.path));

    switch (result) {
      case Success(data: final response):
        final newImageUrl = response.imageUrl;
        // -->> ١. أضيفي هذا الشرط وهذا السطر <<--
        if (newImageUrl != null && newImageUrl.isNotEmpty) {
          // ٢. نقوم بحفظ رابط الصورة الجديد في SharedPreferences
          await SharedPrefHelper.setData(SharedPrefKeys.userImage, newImageUrl);
        }
        emit(UpdateImageState.profileImageSuccess(response.imageUrl ?? '', response.message ?? 'Success'));
        break;
      case Failure(: final apiErrorModel):
        emit(UpdateImageState.profileImageError(apiErrorModel.message ?? 'Upload failed'));
        break;
    }
  }
}