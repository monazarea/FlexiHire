import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/models/delete_job/delete_job_response.dart';
import '../../data/repos/delete_job_repository.dart';
import '../job_update_service.dart';
import 'delete_job_state.dart';

class DeleteJobCubit extends Cubit<DeleteJobState> {
  final DeleteJobRepository _deleteJobRepository;
  final JobUpdateService _jobUpdateService = JobUpdateService();

  DeleteJobCubit(this._deleteJobRepository) : super(const DeleteJobState.initial());

  void deleteJob(int jobId) async {
    // تم التعديل هنا لاستخدام اسم الحالة الجديد
    if (state is DeleteJobLoading) return;

    emit(const DeleteJobState.loading());
    final result = await _deleteJobRepository.deleteJob(jobId);

    switch (result) {
      case Success():
        emit(DeleteJobState.success(DeleteJobResponse(message: "Job deleted successfully")));
        _jobUpdateService.jobDeleted(jobId);
        break;
      case Failure(:final apiErrorModel):
        emit(DeleteJobState.error(apiErrorModel));
        break;
    }
  }
}