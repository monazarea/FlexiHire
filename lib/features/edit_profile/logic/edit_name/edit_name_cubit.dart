// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/networking/api_result.dart';
// import '../../data/models/update_name/update_name_request_body.dart';
// import '../../data/repos/edit_profile_repo.dart';
// import 'edit_name_state.dart';
//
// class EditNameCubit extends Cubit<EditNameState> {
//   final EditProfileRepo _editProfileRepo;
//
//   EditNameCubit(this._editProfileRepo) : super(const EditNameState.initial());
//
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//
//   void updateName() async {
//     if (formKey.currentState!.validate()) {
//       emit(const EditNameState.editNameLoading());
//
//       final response = await _editProfileRepo.updateUserName(
//         UpdateNameRequestBody(
//           firstName: firstNameController.text,
//           lastName: lastNameController.text,
//         ),
//       );
//
//       switch (response) {
//         case Success(data: final data):
//           emit(const EditNameState.editNameSuccess());
//         case Failure(apiErrorModel: final apiErrorModel):
//           emit(EditNameState.editNameError(apiErrorModel));
//       }
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/models/update_name/update_name_request_body.dart';
import '../../data/repos/edit_profile_repo.dart';
import 'edit_name_state.dart';

class EditNameCubit extends Cubit<EditNameState> {
  final EditProfileRepo _editProfileRepo;

  // ١. الكونستركتور الآن يستقبل القيم الأولية
  EditNameCubit(this._editProfileRepo, String initialFirstName, String initialLastName)
      : super(const EditNameState.initial()) {

    print('💗💗💗💗💗💗Cubit received names: $initialFirstName $initialLastName');
    firstNameController.text = initialFirstName;
    lastNameController.text = initialLastName;
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void updateName() async {
    if (formKey.currentState!.validate()) {
      emit(const EditNameState.editNameLoading());

      final response = await _editProfileRepo.updateUserName(
        UpdateNameRequestBody(
          firstName: firstNameController.text,
          lastName: lastNameController.text,
        ),
      );

      switch (response) {
        case Success(data: final data):
          emit(const EditNameState.editNameSuccess());
        case Failure(apiErrorModel: final apiErrorModel):
          emit(EditNameState.editNameError(apiErrorModel));
      }
    }
  }

  // ٣. إضافة دالة close للتخلص من الـ controllers
  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    return super.close();
  }
}