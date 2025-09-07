import 'dart:async'; // 1. استيراد مهم جداً للـ StreamSubscription
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/dashboard/logic/job_update_service.dart'; // 2. استيراد خدمة البث
import 'package:grad_comp/features/profiles/job_seeker/data/models/applied_tab_models/applied_job_model.dart';
import '../../data/repos/applied_jobs_repo.dart';
import 'applied_jobs_state.dart';

class AppliedJobsCubit extends Cubit<AppliedJobsState> {
  final AppliedJobsRepository _appliedJobsRepository;
  // 3. متغير لحفظ الاشتراك في خدمة البث
  late final StreamSubscription _jobUpdateSubscription;

  AppliedJobsCubit(this._appliedJobsRepository)
      : super(const AppliedJobsState.initial()) {
    // 4. عند إنشاء الكيوبت، نبدأ في الاستماع لأي تحديثات
    _jobUpdateSubscription = JobUpdateService().stream.listen((event) {
      if (event.eventType == 'deleted') {
        removeJobFromList(event.jobId);
      }
    });
  }

  // 5. من المهم جداً إلغاء الاشتراك عند تدمير الكيوبت
  @override
  Future<void> close() {
    _jobUpdateSubscription.cancel();
    return super.close();
  }

  void fetchAppliedJobs() async {
    if (state is AppliedJobsLoading) return;

    emit(const AppliedJobsState.loading());
    final result = await _appliedJobsRepository.getAppliedJobs();

    switch (result) {
      case Success(data: final response):
        emit(AppliedJobsState.success(response.appliedJobs ?? []));
        break;
      case Failure(:final apiErrorModel):
        emit(AppliedJobsState.error(apiErrorModel));
        break;
    }
  }

  // --- 👇👇 هذه هي الدالة الجديدة والمهمة 👇👇 ---
  void removeJobFromList(int jobId) {
    if (state is! AppliedJobsSuccess) return;

    final currentState = state as AppliedJobsSuccess;

    // نقوم بإنشاء قائمة جديدة مع حذف الوظيفة المطلوبة
    final updatedList = List<AppliedJobModel>.from(currentState.appliedJobs)
      ..removeWhere((appliedJob) => appliedJob.job.id == jobId);

    // نصدر حالة جديدة بالقائمة المحدثة
    emit(currentState.copyWith(appliedJobs: updatedList));
  }
}