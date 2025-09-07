import 'dart:async'; // ١. إضافة هذا الإمبورت
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart'; // للاستخدام في DI
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import 'package:grad_comp/features/home/data/repos/home_repo.dart';
import 'package:grad_comp/features/save_job/logic/save_job_update_service.dart'; // ٢. إضافة إمبورت الـ Service
import 'recommended_jobs_state.dart';

class RecommendedJobsCubit extends Cubit<RecommendedJobsState> {
  final HomeRepo _homeRepo;
  final SaveJobUpdateService _saveJobUpdateService; // ٣. إضافة الـ Service
  StreamSubscription? _saveJobSubscription; // ٤. متغير لحفظ الاشتراك

  RecommendedJobsCubit(this._homeRepo, this._saveJobUpdateService) // ٥. استقبال الـ Service
      : super(const RecommendedJobsState.initial()) {
    // ٦. نستمع للأحداث فورًا
    _listenToSaveJobUpdates();
  }

  void _listenToSaveJobUpdates() {
    _saveJobSubscription = _saveJobUpdateService.stream.listen((event) {
      // عندما يأتي حدث جديد، نحدث القائمة
      updateJobSavedState(event.jobId, event.isNowSaved);
    });
  }

  void fetchRecommendedJobs() async {
    emit(const RecommendedJobsState.loading());
    final result = await _homeRepo.getRecommendedJobs();
    switch (result) {
      case Success(data: final jobsList):
        emit(RecommendedJobsState.success(jobsList));
        break;
      case Failure(:final apiErrorModel):
        emit(RecommendedJobsState.error(apiErrorModel));
        break;
    }
  }

  void updateJobSavedState(int jobId, bool isNowSaved) {
    if (state is RecommendedJobsSuccess) {
      final currentState = state as RecommendedJobsSuccess;
      final updatedJobs = currentState.jobs.map((job) {
        if (job.id == jobId) {
          return job.copyWith(saved: isNowSaved);
        }
        return job;
      }).toList();
      emit(RecommendedJobsState.success(updatedJobs));
    }
  }

  // ٧. مهم جدًا: إغلاق الاشتراك
  @override
  Future<void> close() {
    _saveJobSubscription?.cancel();
    return super.close();
  }
}