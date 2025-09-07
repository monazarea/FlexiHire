// lib/features/report/logic/report_state.dart

import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  // حالة جديدة لتحديث الواجهة بالصور المختارة
  const factory ReportState.imagesPicked(List<File> images) = ImagesPicked;
  const factory ReportState.loading() = ReportLoading;
  const factory ReportState.success(String message) = ReportSuccess;
  const factory ReportState.error(String error) = ReportError;
}