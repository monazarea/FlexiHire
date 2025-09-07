import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/saved_job_item_model.dart';

part 'saved_jobs_state.freezed.dart';

@freezed
class SavedJobsState with _$SavedJobsState {
  const factory SavedJobsState.initial() = _Initial;
  // V-- تم تغيير أسماء الحالات هنا --V
  const factory SavedJobsState.loading() = SavedJobsLoading;
  const factory SavedJobsState.success({
    required List<SavedJobItemModel> savedJobs,
    required bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = SavedJobsSuccess;
  const factory SavedJobsState.error({required String error}) = SavedJobsError;
}