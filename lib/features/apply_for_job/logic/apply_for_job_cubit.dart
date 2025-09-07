import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/apply_for_job/data/repos/apply_for_job_repository.dart';
import '../data/model/apply_job_request_body.dart';
import 'apply_for_job_state.dart';

class ApplyForJobCubit extends Cubit<ApplyForJobState> {
  final ApplyForJobRepository _applyForJobRepository;

  ApplyForJobCubit(this._applyForJobRepository) : super(const ApplyForJobState.initial());

  void submitApplication({required int jobId, required String proposal}) async {
    // تم التعديل هنا لاستخدام اسم الحالة الجديد
    if (state is ApplyForJobSubmitting) return;

    emit(const ApplyForJobState.submitting());

    final requestBody = ApplyJobRequestBody(jobId: jobId, proposal: proposal);
    final result = await _applyForJobRepository.applyForJob(requestBody);

    switch (result) {
      case Success(data: final response):
        emit(ApplyForJobState.success(response));
        break;
      case Failure(:final apiErrorModel):
        emit(ApplyForJobState.error(apiErrorModel));
        break;
    }
  }
}