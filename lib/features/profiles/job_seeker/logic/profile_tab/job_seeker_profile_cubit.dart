import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart'; // تأكدي من استيراد ApiResult
import 'package:grad_comp/features/profiles/job_seeker/data/repos/job_seeker_profile_repo.dart';

import 'job_seeker_profile_state.dart';


class JobSeekerProfileCubit extends Cubit<JobSeekerProfileState> {
  final JobSeekerProfileRepo _jobSeekerProfileRepo;
  JobSeekerProfileCubit(this._jobSeekerProfileRepo) : super(const JobSeekerProfileState.initial());

  void getJobSeekerProfile(String jobSeekerId) async {
    emit(const JobSeekerProfileState.getProfileLoading());

    final response = await _jobSeekerProfileRepo.getJobSeekerProfile(jobSeekerId);

    switch (response) {
      case Success(data: final profileResponse):
        emit(JobSeekerProfileState.getProfileSuccess(profileResponse.user));
        break;
      case Failure(:final apiErrorModel):
        emit(JobSeekerProfileState.getProfileError(apiErrorModel));
        break;
    }
  }
}