import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'update_cv_state.dart';

class UpdateCvCubit extends Cubit<UpdateCvState> {
  final EditProfileRepo _editProfileRepo;
  UpdateCvCubit(this._editProfileRepo) : super(const UpdateCvState.initial());

  void pickAndUploadCv() async {
    // ١. اختيار الملف
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result == null) return; // المستخدم ألغى الاختيار

    File file = File(result.files.single.path!);

    // ٢. رفع الملف
    emit(const UpdateCvState.loading());
    final responseResult = await _editProfileRepo.updateCv(file);

    switch(responseResult) {
      case Success(data: final response):
        final newUrl = response.imageUrl ?? ''; // نفترض أن الرابط الجديد يأتي في imageUrl
        emit(UpdateCvState.success(response.message ?? 'CV updated!', newUrl));
        break;
      case Failure(apiErrorModel: final error):
        emit(UpdateCvState.error(error.message ?? 'Failed to upload CV.'));
        break;
    }
  }
}