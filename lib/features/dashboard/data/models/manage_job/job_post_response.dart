import 'package:freezed_annotation/freezed_annotation.dart';
// سنعيد استخدام هذا الموديل لأنه يحتوي على كل الحقول اللازمة

import '../dashboard_screen/dashboard_job_model.dart';

part 'job_post_response.freezed.dart';
part 'job_post_response.g.dart';

@freezed
abstract class JobPostResponse with _$JobPostResponse {
  const factory JobPostResponse({
    bool? status,
    String? message,
    DashboardJobModel? job,
  }) = _JobPostResponse;

  factory JobPostResponse.fromJson(Map<String, dynamic> json) =>
      _$JobPostResponseFromJson(json);
}