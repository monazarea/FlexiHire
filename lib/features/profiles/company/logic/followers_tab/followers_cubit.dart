import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import '../../data/repos/company_followers_repository.dart';
import 'followers_state.dart';

class FollowersCubit extends Cubit<FollowersState> {
  final CompanyFollowersRepository _followersRepository;
  final String companyId;
  int _currentPage = 1;

  FollowersCubit(this._followersRepository, this.companyId) : super(const FollowersState.initial());

  void fetchInitialFollowers() async {
    if (state is FollowersLoading) return;

    emit(const FollowersState.loading());
    final result = await _followersRepository.getCompanyFollowers(companyId: companyId, page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final followersList = paginationData.followers ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || followersList.isEmpty;
        _currentPage = 1;
        emit(FollowersState.success(followers: followersList, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(FollowersState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreFollowers() async {
    if (state is! FollowersSuccess) return;

    final currentState = state as FollowersSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));

    _currentPage++;
    final result = await _followersRepository.getCompanyFollowers(companyId: companyId, page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newFollowers = paginationData.followers ?? [];
        final hasReachedMax = paginationData.currentPage == paginationData.lastPage || newFollowers.isEmpty;
        emit(currentState.copyWith(
          followers: List.of(currentState.followers)..addAll(newFollowers),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure(:final apiErrorModel):
        emit(currentState.copyWith(isLoadingMore: false));
        break;
    }
  }
}