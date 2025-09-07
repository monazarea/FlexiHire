import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_result.dart';
import '../data/repos/skills_jobs_repository.dart';
import 'skills_jobs_state.dart';

class SkillsJobsCubit extends Cubit<SkillsJobsState> {
  final SkillsJobsRepository _skillsJobsRepository;

  SkillsJobsCubit(this._skillsJobsRepository) : super(const SkillsJobsState.initial()) {
    fetchSkillsAndJobs();
  }

  void fetchSkillsAndJobs() async {
    emit(const SkillsJobsState.loading());

    final result = await _skillsJobsRepository.getSkillsAndJobs();

    // -- V  بداية التعديل V --
    switch (result) {
      case Success(data: final skillsJobsResponse):
        emit(SkillsJobsState.success(skillsJobsResponse));
        break;
      case Failure(apiErrorModel: final apiErrorModel):
        emit(SkillsJobsState.error(error: apiErrorModel.getAllErrorMesseges() ?? 'An error occurred'));
        break;
    }
    // -- ^ نهاية التعديل ^ --
  }
}