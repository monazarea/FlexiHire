//
// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../../../core/networking/api_error_model.dart';
//
// part 'save_job_state.freezed.dart';
// part 'save_job_state.g.dart';
//
// // الـ Enum يظل كما هو
// enum SaveStatus { initial, loading, success, error }
//
// @freezed
// abstract class SaveJobState with _$SaveJobState {
//   const factory SaveJobState({
//     // نستخدم @Default لتحديد القيمة الافتراضية
//     @Default(SaveStatus.initial) SaveStatus status,
//     required bool isSaved,
//     String? successMessage,
//     ApiErrorModel? error,
//   }) = _SaveJobState;
//
//   // هذه الدالة اختيارية إذا كنت لا تحتاج لحفظ الحالة في storage
//   factory SaveJobState.fromJson(Map<String, dynamic> json) =>
//       _$SaveJobStateFromJson(json);
// }
//


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';

part 'save_job_state.freezed.dart';

enum SaveJobStatus { initial, loading, success, error }

@freezed
abstract class SaveJobState with _$SaveJobState {
  const factory SaveJobState({
    required bool isSaved,
    @Default(SaveJobStatus.initial) SaveJobStatus status,
    String? successMessage,
    ApiErrorModel? error,
  }) = _SaveJobState;
}