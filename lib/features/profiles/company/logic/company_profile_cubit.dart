import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../../dashboard/logic/job_update_service.dart';
import '../data/repos/company_profile_repo.dart';
import 'company_profile_state.dart';

class CompanyProfileCubit extends Cubit<CompanyProfileState> {
  final CompanyProfileRepository _companyProfileRepository;
  late final StreamSubscription _jobUpdateSubscription;
  CompanyProfileCubit(this._companyProfileRepository) : super(const CompanyProfileState.initial()){_jobUpdateSubscription = JobUpdateService().stream.listen((event) {
    // عندما تصل إشارة حذف، نقوم بتحديث قائمتنا
    if (event.eventType == 'deleted') {
      _removeJobFromList(event.jobId);
    }
  });}


  void getCompanyProfile(String companyId) async {
    emit(const CompanyProfileState.loading());
    final result = await _companyProfileRepository.getCompanyProfile(companyId);

    switch (result) {
      case Success(data: final response):
        emit(CompanyProfileState.success(response));
        break;
      case Failure(:final apiErrorModel):
        emit(CompanyProfileState.error(apiErrorModel));
        break;
    }
  }

  void _removeJobFromList(int jobId) {
    // نتأكد أن الحالة الحالية هي نجاح وأن البيانات موجودة
    if (state is! CompanyProfileSuccess) return;
    final currentState = state as CompanyProfileSuccess;
    final companyData = currentState.data.data;
    if (companyData == null) return;

    // نقوم بإنشاء قائمة جديدة مع حذف الوظيفة المطلوبة
    final updatedJobs = List.of(companyData.jobs)
      ..removeWhere((job) => job.id == jobId);

    // ننشئ نسخة جديدة من بيانات الشركة مع قائمة الوظائف المحدثة
    final updatedCompanyData = companyData.copyWith(jobs: updatedJobs);

    // ننشئ نسخة جديدة من الاستجابة الكاملة
    final updatedResponse = currentState.data.copyWith(data: updatedCompanyData);

    // نصدر حالة جديدة بالبيانات المحدثة
    emit(CompanyProfileState.success(updatedResponse));
  }
}