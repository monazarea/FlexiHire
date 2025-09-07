import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

part 'jobs_list_state.freezed.dart';

@freezed
class JobsListState with _$JobsListState {
  // الحالة الابتدائية
  const factory JobsListState.initial() = _JobsListInitial;

  // حالة التحميل (للطلب الأول فقط)
  const factory JobsListState.loading() = JobsListLoading;

  // الحالة الرئيسية بعد نجاح التحميل الأول
  // هي التي تحمل كل البيانات وحالة تحميل المزيد
  const factory JobsListState.success({
    required List<JobModel> jobs,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = JobsListSuccess;

  // حالة الخطأ (للطلب الأول فقط)
  const factory JobsListState.error(ApiErrorModel apiErrorModel) = JobsListError;
}