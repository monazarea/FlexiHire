// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/core/networking/api_result.dart';
// import 'package:grad_comp/features/save_job/data/repos/save_job_repository.dart';
// import 'save_job_state.dart';
// import 'save_job_update_event.dart';
// import 'save_job_update_service.dart';
//
// class SaveJobCubit extends Cubit<SaveJobState> {
//   final SaveJobRepository _repository;
//   final int _jobId;
//   final SaveJobUpdateService _updateService = SaveJobUpdateService();
//
//   SaveJobCubit(this._repository, this._jobId, bool initialIsSaved)
//       : super(SaveJobState(isSaved: initialIsSaved));
//
//   void toggleSave() async {
//     if (state.status == SaveJobStatus.loading) return;
//
//     final originalState = state.isSaved;
//     emit(state.copyWith(isSaved: !originalState, status: SaveJobStatus.loading));
//
//     final result = await _repository.toggleSave(_jobId);
//
//     switch (result) {
//       case Success(data: final response):
//         final serverState = response.isSaved ?? !originalState;
//         emit(state.copyWith(
//           status: SaveJobStatus.success,
//           isSaved: serverState,
//           successMessage: response.message,
//         ));
//         // نرسل الحدث لكل الأزرار الأخرى
//         _updateService.addEvent(
//             SaveJobUpdateEvent(jobId: _jobId, isNowSaved: serverState));
//         break;
//       case Failure(:final apiErrorModel):
//         emit(state.copyWith(
//             isSaved: originalState,
//             status: SaveJobStatus.error,
//             error: apiErrorModel));
//         break;
//     }
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/save_job/data/repos/save_job_repository.dart';
import 'save_job_state.dart';
import 'save_job_update_event.dart';
import 'save_job_update_service.dart';

class SaveJobCubit extends Cubit<SaveJobState> {
  final SaveJobRepository _repository;
  final int _jobId;
  final SaveJobUpdateService _updateService;

  SaveJobCubit(
      this._repository,
      this._jobId,
      bool initialIsSaved,
      this._updateService,
      ) : super(SaveJobState(isSaved: initialIsSaved));

  void toggleSave() async {
    // منع الضغطات المتتالية أثناء التحميل
    if (state.status == SaveJobStatus.loading) return;

    final originalState = state.isSaved;

    // 1. تحديث متفائل: تغيير شكل الزر فورًا لتحسين تجربة المستخدم
    emit(state.copyWith(isSaved: !originalState, status: SaveJobStatus.loading));

    // استدعاء الـ Repository. لاحظ أن اسم الدالة يجب أن يطابق ما في الـ Repository
    final result = await _repository.toggleSaveJob(_jobId);

    switch (result) {
      case Success(data: final response):
      // 2. عند النجاح، نستخدم القيمة الراجعة من السيرفر كمصدر للحقيقة
        final serverState = response.isSaved ?? !originalState;
        emit(state.copyWith(
          status: SaveJobStatus.success,
          isSaved: serverState, // <-- نؤكد الحالة الصحيحة
          successMessage: response.message,
        ));

        // 3. نرسل حدثًا لكل الأزرار الأخرى في التطبيق لتحديث حالتها
        _updateService.addEvent(
            SaveJobUpdateEvent(jobId: _jobId, isNowSaved: serverState)
        );
        break;

      case Failure(apiErrorModel: final apiErrorModel):
      // 4. عند الفشل، نرجع الواجهة للحالة الأصلية قبل الضغط
        emit(state.copyWith(
            isSaved: originalState,
            status: SaveJobStatus.error,
            error: apiErrorModel));
        break;
    }
  }

  // دالة لتحديث الحالة عند استقبال حدث من زر آخر
  // هذه الدالة يتم استدعاؤها من الـ StreamSubscription في SaveJobButtonController
  void updateStateFromExternalEvent(bool isNowSaved) {
    emit(state.copyWith(isSaved: isNowSaved, status: SaveJobStatus.initial));
  }
}