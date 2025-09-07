// lib/features/edit_profile/logic/edit_skills_jobs/update_skills_jobs_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/models/update_skills_jobs/update_skills_jobs_request_body.dart';
import '../../data/repos/edit_profile_repo.dart';
import 'update_skills_jobs_state.dart';

class UpdateSkillsJobsCubit extends Cubit<UpdateSkillsJobsState> {
  final EditProfileRepo _editProfileRepo;

  UpdateSkillsJobsCubit(this._editProfileRepo) : super(const UpdateSkillsJobsState.initial());

  void updateSkillsAndJob({
    required List<int> skillIds,
    required int jobId,
  }) async {
    // استخدام الاسم الجديد
    emit(const UpdateSkillsJobsState.loading());

    final result = await _editProfileRepo.updateSkillsAndJob(
      UpdateSkillsJobsRequestBody(skillIds: skillIds, jobId: jobId),
    );

    switch (result) {
      case Success(data: final response):
        if (response.user != null) {
          // استخدام الاسم الجديد
          emit(UpdateSkillsJobsState.success(
            message: response.message ?? 'Updated successfully',
            updatedUser: response.user!,
          ));
        } else {
          // استخدام الاسم الجديد
          emit(const UpdateSkillsJobsState.error('Failed to get updated user data.'));
        }
        break;
      case Failure(apiErrorModel: final error):
      // استخدام الاسم الجديد
        emit(UpdateSkillsJobsState.error(error.getAllErrorMesseges()?? 'An error occurred.'));
        break;
    }
  }
}