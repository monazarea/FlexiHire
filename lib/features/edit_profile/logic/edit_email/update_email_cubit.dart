import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/edit_profile/data/models/update_email/update_email_request_body.dart';
import 'package:grad_comp/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'update_email_state.dart';

class UpdateEmailCubit extends Cubit<UpdateEmailState> {
  final EditProfileRepo _repository;
  UpdateEmailCubit(this._repository) : super(const UpdateEmailState.initial());

  void updateEmail(String email) async {
    emit(const UpdateEmailState.updateEmailLoading());

    final result = await _repository.updateEmail(UpdateEmailRequestBody(email: email));

    switch(result) {
      case Success(data: final response):
        if (response.email != null && response.email!.isNotEmpty) {
          await SharedPrefHelper.setData(SharedPrefKeys.userEmail, response.email!);
        }
        emit(UpdateEmailState.updateEmailSuccess(response.message ?? 'Success'));
        break;
      case Failure(apiErrorModel: final error):
        emit(UpdateEmailState.updateEmailError(error.message ?? 'An error occurred'));
        break;
    }
  }
}