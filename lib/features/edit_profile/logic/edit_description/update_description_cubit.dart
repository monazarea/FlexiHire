// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart'; // عشان TextEditingController و GlobalKey
//
// import '../../../../../core/networking/api_result.dart' as api_result;
// import '../../data/models/update_description/update_description_request_body.dart';
// import '../../data/repos/edit_profile_repo.dart';
// import 'update_description_state.dart';
//
//
// class UpdateDescriptionCubit extends Cubit<UpdateDescriptionState> {
//   final EditProfileRepo _editProfileRepo;
//
//   UpdateDescriptionCubit(this._editProfileRepo) : super(const UpdateDescriptionState.initial());
//
//   TextEditingController descriptionController = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//
//   void updateDescription() async {
//     if (formKey.currentState!.validate()) {
//       emit(const UpdateDescriptionState.descriptionLoading());
//
//       final response = await _editProfileRepo.updateProfileDescription(
//         UpdateDescriptionRequestBody(
//           description: descriptionController.text,
//         ),
//       );
//
//       switch (response) {
//         case api_result.Success(data: final updateDescriptionResponseBody):
//           emit(UpdateDescriptionState.DescriptionSuccess());
//         case api_result.Failure(apiErrorModel: final apiErrorModel):
//           emit(UpdateDescriptionState.DescriptionError(apiErrorModel));
//       }
//     }
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../../core/networking/api_result.dart'; // تأكدي من صحة هذا المسار
import '../../data/models/update_description/update_description_request_body.dart';
import '../../data/repos/edit_profile_repo.dart';
import 'update_description_state.dart';

class UpdateDescriptionCubit extends Cubit<UpdateDescriptionState> {
  final EditProfileRepo _editProfileRepo;

  // ١. الكونستركتور الآن يستقبل القيمة الأولية
  UpdateDescriptionCubit(this._editProfileRepo, String initialDescription)
      : super(const UpdateDescriptionState.initial()) {
    // ٢. نضع القيمة في الـ controller
    descriptionController.text = initialDescription;
  }

  TextEditingController descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void updateDescription() async {
    if (formKey.currentState!.validate()) {
      emit(const UpdateDescriptionState.descriptionLoading());

      final response = await _editProfileRepo.updateProfileDescription(
        UpdateDescriptionRequestBody(
          description: descriptionController.text,
        ),
      );

      switch (response) {
        case Success(data: final updateDescriptionResponseBody):
          emit(const UpdateDescriptionState.DescriptionSuccess());
        case Failure(apiErrorModel: final apiErrorModel):
          emit(UpdateDescriptionState.DescriptionError(apiErrorModel));
      }
    }
  }

  // ٣. إضافة دالة close للتخلص من الـ controller
  @override
  Future<void> close() {
    descriptionController.dispose();
    return super.close();
  }
}