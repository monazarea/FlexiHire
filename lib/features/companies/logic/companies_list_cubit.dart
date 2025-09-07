

import 'dart:async'; // 1. استيراد مهم جداً للـ StreamSubscription
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/companies/data/repos/companies_repository.dart';
import 'package:grad_comp/features/follow/logic/follow_update_service.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import 'companies_list_state.dart';

class CompaniesListCubit extends Cubit<CompaniesListState> {
  final CompaniesRepository _companiesRepository;
  // 2. متغير لحفظ الاشتراك في خدمة البث
  late final StreamSubscription _followSubscription;

  int _currentPage = 1;

  CompaniesListCubit(this._companiesRepository)
      : super(const CompaniesListState.initial()) {
    debugPrint('✅ CompaniesListCubit CREATED and LISTENING...');
    // 3. عند إنشاء الكيوبت، نبدأ في الاستماع لأي تحديثات في حالة المتابعة
    _followSubscription = FollowUpdateService().stream.listen((event) {
      updateFollowStateInList(event.companyId, event.isNowFollowing);
    });
  }

  // 4. من المهم جداً إلغاء الاشتراك عند تدمير الكيوبت لمنع تسريب الذاكرة
  @override
  Future<void> close() {
    debugPrint('❌ CompaniesListCubit CLOSED and subscription cancelled.');
    _followSubscription.cancel();
    return super.close();
  }

  void fetchInitialCompanies() async {
    if (state is CompaniesListLoading) return;

    emit(const CompaniesListState.loading());
    final result = await _companiesRepository.getCompanies(page: 1);

    switch (result) {
      case Success(data: final paginationData):
        final companiesList = paginationData.companies ?? [];
        final hasReachedMax =
            paginationData.currentPage == paginationData.lastPage ||
                companiesList.isEmpty;
        _currentPage = 1;
        emit(CompaniesListState.success(
            companies: companiesList, hasReachedMax: hasReachedMax));
        break;
      case Failure(:final apiErrorModel):
        emit(CompaniesListState.error(apiErrorModel));
        break;
    }
  }

  void loadMoreCompanies() async {
    if (state is! CompaniesListSuccess) return;

    final currentState = state as CompaniesListSuccess;
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    emit(currentState.copyWith(isLoadingMore: true));

    _currentPage++;
    final result = await _companiesRepository.getCompanies(page: _currentPage);

    switch (result) {
      case Success(data: final paginationData):
        final newCompanies = paginationData.companies ?? [];
        final hasReachedMax =
            paginationData.currentPage == paginationData.lastPage ||
                newCompanies.isEmpty;
        emit(currentState.copyWith(
          companies: List.of(currentState.companies)..addAll(newCompanies),
          isLoadingMore: false,
          hasReachedMax: hasReachedMax,
        ));
        break;
      case Failure(:final apiErrorModel):
        emit(currentState.copyWith(isLoadingMore: false));
        break;
    }
  }

  // هذه الدالة الآن يتم استدعاؤها تلقائياً عند حدوث أي تغيير
  void updateFollowStateInList(int companyId, bool isFollowing) {
    if (state is! CompaniesListSuccess) return;

    final currentState = state as CompaniesListSuccess;

    final updatedCompanies = currentState.companies.map((company) {
      if (company.id == companyId) {
        return company.copyWith(following: isFollowing);
      }
      return company;
    }).toList();

    emit(currentState.copyWith(companies: updatedCompanies));
  }
}