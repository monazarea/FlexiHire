import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/follow/logic/follow_update_service.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import '../../data/repos/followed_companies_repository.dart';
import 'followed_companies_state.dart';

class FollowedCompaniesCubit extends Cubit<FollowedCompaniesState> {
  final FollowedCompaniesRepository _repository;
  final String userId;
  late final StreamSubscription _followSubscription;
  int _currentPage = 1;

  FollowedCompaniesCubit(this._repository, this.userId)
      : super(const FollowedCompaniesState.initial()) {
    _followSubscription = FollowUpdateService().stream.listen((event) {
      _handleFollowUpdate(event);
    });
  }

  @override
  Future<void> close() {
    _followSubscription.cancel();
    return super.close();
  }

  void fetchInitialFollowedCompanies() async {
    if (state is FollowedCompaniesLoading) return;

    emit(const FollowedCompaniesState.loading());
    final result = await _repository.getFollowedCompanies(userId: userId, page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final companiesList = paginationData.companies ?? [];
        final followedCompaniesList = companiesList.map((company) => company.copyWith(following: true)).toList();
        final hasReachedMax = companiesList.isEmpty || paginationData.currentPage == paginationData.lastPage;
        _currentPage = 1;
        emit(FollowedCompaniesState.success(companies: followedCompaniesList, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(FollowedCompaniesState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreFollowedCompanies() async {
    if (state is! FollowedCompaniesSuccess) return;
    final currentState = state as FollowedCompaniesSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));
    _currentPage++;
    final result = await _repository.getFollowedCompanies(userId: userId, page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newCompanies = paginationData.companies ?? [];
        final newFollowedCompanies = newCompanies.map((company) => company.copyWith(following: true)).toList();
        final hasReachedMax = newCompanies.isEmpty || paginationData.currentPage == paginationData.lastPage;
        emit(currentState.copyWith(
          companies: List.of(currentState.companies)..addAll(newFollowedCompanies),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure(:final apiErrorModel):
        emit(currentState.copyWith(isLoadingMore: false));
        break;
    }
  }

  void _handleFollowUpdate(FollowUpdateEvent event) {
    if (state is! FollowedCompaniesSuccess) return;
    final currentState = state as FollowedCompaniesSuccess;

    if (!event.isNowFollowing) {
      final updatedList = List<CompanyModel>.from(currentState.companies)
        ..removeWhere((company) => company.id == event.companyId);
      emit(currentState.copyWith(companies: updatedList));
    } else {
      // إذا قام بمتابعة شركة جديدة، نعيد التحميل
      fetchInitialFollowedCompanies();
    }
  }
}