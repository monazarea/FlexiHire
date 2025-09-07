import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/follow/data/repos/follow_repository.dart';
import 'follow_state.dart';
import 'follow_update_service.dart';
import 'package:flutter/foundation.dart'; // لاستخدام print

class FollowCubit extends Cubit<FollowState> {
  final FollowRepository _followRepository;
  final int _companyId;
  final FollowUpdateService _followUpdateService = FollowUpdateService();

  FollowCubit(this._followRepository, this._companyId, bool initialIsFollowing)
      : super(FollowState(isFollowing: initialIsFollowing));

  void toggleFollow() async {
    if (state.status == FollowRequestStatus.loading) return;

    final originalState = state.isFollowing;
    emit(state.copyWith(
        isFollowing: !originalState, status: FollowRequestStatus.loading));

    final result = await _followRepository.toggleFollow(_companyId);

    switch (result) {
      case Success(data: final response):
        final serverState = response.isFollowing ?? !originalState;
        emit(state.copyWith(
            status: FollowRequestStatus.success,
            isFollowing: serverState,
            successMessage: response.message));

        // --- نقطة التفتيش هنا ---
        debugPrint('✅ EVENT SENT: Company ID=${_companyId}, isFollowing=${serverState}');
        _followUpdateService.addEvent(FollowUpdateEvent(
            companyId: _companyId, isNowFollowing: serverState));
        break;

      case Failure(:final apiErrorModel):
        emit(state.copyWith(
            isFollowing: originalState,
            status: FollowRequestStatus.error,
            error: apiErrorModel));
        break;
    }
  }
}