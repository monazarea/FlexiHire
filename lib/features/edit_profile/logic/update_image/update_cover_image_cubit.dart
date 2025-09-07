import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'update_image_state.dart';

class UpdateCoverImageCubit extends Cubit<UpdateImageState> {
  final EditProfileRepo _repository;
  final ImagePicker _imagePicker = ImagePicker();

  UpdateCoverImageCubit(this._repository)
      : super(const UpdateImageState.initial());

  void pickAndUploadImage() async {
    final XFile? pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;

    emit(const UpdateImageState.coverImageLoading());
    final result = await _repository.updateBackgroundImage(File(pickedFile.path));

    switch (result) {
      case Success(data: final response):
        emit(UpdateImageState.coverImageSuccess(response.imageUrl ?? '', response.message ?? 'Success'));
        break;
      case Failure(:final apiErrorModel):
        emit(UpdateImageState.coverImageError(apiErrorModel.message ?? 'Upload failed'));
        break;
    }
  }
}