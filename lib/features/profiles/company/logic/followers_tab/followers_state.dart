import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/job_seekers/data/models/job_seeker_list_item_model.dart';

part 'followers_state.freezed.dart';

@freezed
class FollowersState with _$FollowersState {
  const factory FollowersState.initial() = _FollowersInitial;
  const factory FollowersState.loading() = FollowersLoading;
  const factory FollowersState.success({
    required List<JobSeekerListItemModel> followers,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = FollowersSuccess;
  const factory FollowersState.error(ApiErrorModel apiErrorModel) = FollowersError;
}