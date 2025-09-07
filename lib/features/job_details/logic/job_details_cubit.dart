import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/job_details/data/repos/job_details_repository.dart';
import 'job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  final JobDetailsRepository _jobDetailsRepository;

  JobDetailsCubit(this._jobDetailsRepository) : super(const JobDetailsState.initial());

  void fetchJobDetails(String jobId) async {
    emit(const JobDetailsState.loading());
    final result = await _jobDetailsRepository.getJobDetails(jobId);

    switch (result) {
      case Success(data: final response):
        emit(JobDetailsState.success(response));
        break;
      case Failure(:final apiErrorModel):
        emit(JobDetailsState.error(apiErrorModel));
        break;
    }
  }
}