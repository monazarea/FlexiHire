import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/repos/update_application_status_repository.dart';
import 'update_application_status_state.dart';

class UpdateApplicationStatusCubit extends Cubit<UpdateApplicationStatusState> {
  final UpdateApplicationStatusRepository _repository;

  UpdateApplicationStatusCubit(this._repository)
      : super(const UpdateApplicationStatusState.initial());

  void updateStatus({required int proposalId, required String status}) async {
    // تم استخدام الأسماء الجديدة هنا
    emit(const UpdateApplicationStatusState.loading());
    final result = await _repository.updateStatus(proposalId: proposalId, status: status);

    switch (result) {
      case Success(data: final response):
        emit(UpdateApplicationStatusState.success(response.message));
        break;
      case Failure(: final apiErrorModel):
        emit(UpdateApplicationStatusState.error(apiErrorModel.message ?? 'An error occurred.'));
        break;
    }
  }
}