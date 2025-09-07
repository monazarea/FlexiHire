// lib/features/report/logic/report_cubit.dart

import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../data/repos/report_repository.dart';
import 'report_state.dart';

class ReportCubit extends Cubit<ReportState> {
  final ReportRepository _reportRepository;
  final _imagePicker = ImagePicker();

  // قائمة لحفظ الصور التي يختارها المستخدم
  final List<File> _pickedImages = [];

  ReportCubit(this._reportRepository) : super(const ReportState.initial());

  // دالة لاختيار الصور من المعرض
  void pickImages() async {
    final List<XFile> newImages = await _imagePicker.pickMultiImage(
      imageQuality: 80, // يمكن ضغط الصور لتقليل حجمها
    );

    if (newImages.isNotEmpty) {
      _pickedImages.addAll(newImages.map((xfile) => File(xfile.path)).toList());
      // نصدر حالة جديدة تحتوي على القائمة المحدثة للصور
      emit(ReportState.imagesPicked(List.from(_pickedImages)));
    }
  }

  // دالة لحذف صورة من القائمة
  void removeImage(File image) {
    _pickedImages.remove(image);
    emit(ReportState.imagesPicked(List.from(_pickedImages)));
  }

  // دالة لإرسال الإبلاغ
  void submitReport({
    required int reportedUserId,
    required String reason,
  }) async {
    emit(const ReportState.loading());
    final result = await _reportRepository.createReport(
      reportedUserId: reportedUserId,
      reason: reason,
      images: _pickedImages,
    );

    switch (result) {
      case Success(data: final response):
        emit(ReportState.success(response.message ?? 'Report submitted successfully.'));
        break;
      case Failure(apiErrorModel: final error):
        emit(ReportState.error(error.message ?? 'Failed to submit report.'));
        break;
    }
  }
}