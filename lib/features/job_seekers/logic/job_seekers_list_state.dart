import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/job_seekers/data/models/job_seeker_list_item_model.dart';

part 'job_seekers_list_state.freezed.dart';

@freezed
class JobSeekersListState with _$JobSeekersListState {
  const factory JobSeekersListState.initial() = _JobSeekersListInitial;
  const factory JobSeekersListState.loading() = JobSeekersListLoading;
  const factory JobSeekersListState.success({
    required List<JobSeekerListItemModel> jobSeekers,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = JobSeekersListSuccess;
  const factory JobSeekersListState.error(ApiErrorModel apiErrorModel) = JobSeekersListError;
}