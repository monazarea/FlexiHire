// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/networking/api_result.dart';
// import '../../data/models/dashboard_screen/dashboard_job_model.dart';
// import '../../data/models/manage_job/job_request_body.dart';
// import '../../data/repos/manage_job_repository.dart';
// import 'manage_job_state.dart';
//
// // Enum لتحديد نوع العملية الحالية
// enum JobFormType { create, update }
//
// class ManageJobCubit extends Cubit<ManageJobState> {
//   final ManageJobRepository _manageJobRepository;
//
//   ManageJobCubit(this._manageJobRepository) : super(const ManageJobState.initial());
//
//   final List<String> selectedSkills = [];
//
//   // Controllers لحقول الإدخال
//   final formKey = GlobalKey<FormState>();
//   final titleController = TextEditingController();
//   final locationController = TextEditingController();
//   final descriptionController = TextEditingController();
//   final skillsController = TextEditingController();
//   final minSalaryController = TextEditingController();
//   final maxSalaryController = TextEditingController();
//   String selectedCurrency = 'USD';
//   String selectedPaymentPeriod = 'monthly';
//   bool salaryNegotiable = false;
//   bool hiringMultiple = false;
//
//   // دالة لتهيئة الشاشة ببيانات الوظيفة عند التعديل
//   void initializeForUpdate(DashboardJobModel job) {
//     titleController.text = job.title ?? '';
//     locationController.text = job.location ?? '';
//     descriptionController.text = job.description ?? '';
//
//     // لتحويل قائمة المهارات إلى نص واحد تفصل بينه فاصلة
//     skillsController.text = job.skills?.join(', ') ?? '';
//
//     // لتحويل الأرقام إلى نصوص
//     minSalaryController.text = job.minSalary?.toString() ?? '';
//     maxSalaryController.text = job.maxSalary?.toString() ?? '';
//
//     // 2. تحديث قيم متغيرات الـ Dropdown والـ Checkboxes
//     selectedPaymentPeriod = job.paymentPeriod ?? 'monthly';
//     salaryNegotiable = job.salaryNegotiable ?? false;
//     hiringMultiple = job.hiringMultipleCandidates ?? false;
//
//     selectedSkills.clear();
//     selectedSkills.addAll(job.skills ?? []);
//
//     print('1. Cubit Initialized with skills: $selectedSkills');
//
//   }
//
//   // دالة الإرسال الرئيسية
//   void submitJob({
//     required JobFormType formType,
//     int? jobId, // مطلوب فقط في حالة التعديل
//   }) async {
//     if (state is ManageJobLoading) return;
//
//     if (formKey.currentState!.validate()) {
//       emit(const ManageJobState.loading());
//
//       final requestBody = JobRequestBody(
//         title: titleController.text,
//         location: locationController.text,
//         description: descriptionController.text,
//         skills: selectedSkills,
//         minSalary: int.tryParse(minSalaryController.text) ?? 0,
//         maxSalary: int.tryParse(maxSalaryController.text) ?? 0,
//         salaryNegotiable: salaryNegotiable,
//         paymentPeriod: selectedPaymentPeriod,
//         paymentCurrency: selectedCurrency,
//         hiringMultipleCandidates: hiringMultiple,
//       );
//
//       // نحدد أي دالة في الـ Repository سنستدعيها
//       final result = formType == JobFormType.create
//           ? await _manageJobRepository.createJob(requestBody)
//           : await _manageJobRepository.updateJob(jobId!, requestBody);
//
//       switch (result) {
//         case Success(data: final response):
//           emit(ManageJobState.success(response));
//           break;
//         case Failure(:final apiErrorModel):
//           emit(ManageJobState.error(apiErrorModel));
//           break;
//       }
//     }
//   }
//
//   @override
//   Future<void> close() async {
//     // ... dispose all controllers
//     super.close();
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/models/dashboard_screen/dashboard_job_model.dart';
import '../../data/models/manage_job/job_request_body.dart';
import '../../data/repos/manage_job_repository.dart';
import 'manage_job_state.dart';

class ManageJobCubit extends Cubit<ManageJobState> {
  final ManageJobRepository _manageJobRepository;
  final DashboardJobModel? initialJob;

  ManageJobCubit(this._manageJobRepository, {this.initialJob})
      : super(const ManageJobState.initial()) {
    if (initialJob != null) {
      initializeForUpdate(initialJob!);
    }
  }

  // Controllers وكل متغيرات الفورم
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final minSalaryController = TextEditingController();
  final maxSalaryController = TextEditingController();
  final List<String> selectedSkills = [];
  String selectedCurrency = 'USD';
  String selectedPaymentPeriod = 'monthly';
  bool salaryNegotiable = false;
  bool hiringMultiple = false;

  void initializeForUpdate(DashboardJobModel job) {
    titleController.text = job.title ?? '';
    locationController.text = job.location ?? '';
    descriptionController.text = job.description ?? '';
    minSalaryController.text = job.minSalary?.toString() ?? '';
    maxSalaryController.text = job.maxSalary?.toString() ?? '';
    selectedPaymentPeriod = job.paymentPeriod ?? 'monthly';
    salaryNegotiable = job.salaryNegotiable ?? false;
    hiringMultiple = job.hiringMultipleCandidates ?? false;
    selectedSkills.clear();
    selectedSkills.addAll(job.skills ?? []);
  }

  void submitJob() async {
    if (state is ManageJobLoading) return;
    if (!formKey.currentState!.validate()) return;

    emit(const ManageJobState.loading());
    final isUpdateMode = initialJob != null;

    final requestBody = JobRequestBody(
      title: titleController.text,
      location: locationController.text,
      description: descriptionController.text,
      skills: selectedSkills,
      minSalary: int.tryParse(minSalaryController.text) ?? 0,
      maxSalary: int.tryParse(maxSalaryController.text) ?? 0,
      salaryNegotiable: salaryNegotiable,
      paymentPeriod: selectedPaymentPeriod,
      paymentCurrency: selectedCurrency,
      hiringMultipleCandidates: hiringMultiple,
    );

    final result = isUpdateMode
        ? await _manageJobRepository.updateJob(initialJob!.id, requestBody)
        : await _manageJobRepository.createJob(requestBody);

    switch (result) {
      case Success(data: final response):
        emit(ManageJobState.success(response));
        break;
      case Failure(:final apiErrorModel):
        emit(ManageJobState.error(apiErrorModel));
        break;
    }
  }

  @override
  Future<void> close() {
    titleController.dispose();
    locationController.dispose();
    descriptionController.dispose();
    minSalaryController.dispose();
    maxSalaryController.dispose();
    return super.close();
  }
}