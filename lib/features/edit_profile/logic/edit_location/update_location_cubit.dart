import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/edit_profile/data/models/update_location/update_location_request_body.dart';
import 'package:grad_comp/features/edit_profile/data/repos/edit_profile_repo.dart';
import 'update_location_state.dart';

class UpdateLocationCubit extends Cubit<UpdateLocationState> {
  final EditProfileRepo _editProfileRepo;
  final locationController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  UpdateLocationCubit(this._editProfileRepo, String initialLocation)
      : super(const UpdateLocationState.initial()) {
    locationController.text = initialLocation;
  }

  void updateLocation() async {
    if (!formKey.currentState!.validate()) return;

    emit(const UpdateLocationState.loading());

    final result = await _editProfileRepo.updateLocation(
      UpdateLocationRequestBody(location: locationController.text),
    );

    switch (result) {
      case Success(data: final response):
        emit(UpdateLocationState.success(response.message ?? 'Success'));
        break;
      case Failure(apiErrorModel: final error):
        emit(UpdateLocationState.error(error.message ?? 'Failed to update.'));
        break;
    }
  }

  @override
  Future<void> close() {
    locationController.dispose();
    return super.close();
  }
}