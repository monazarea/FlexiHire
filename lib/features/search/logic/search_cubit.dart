import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/search/data/repos/search_repository.dart';
import 'search_state.dart';
import 'search_type.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepository _searchRepository;

  SearchCubit(this._searchRepository) : super(const SearchState.initial());

  /// دالة لتجهيز الكيوبت عند فتح الشاشة لأول مرة
  /// تحدد نوع البحث المبدئي وهل يمكن للمستخدم تغييره أم لا
  void initialize({required SearchType type, required bool isLocked}) {
    emit(SearchState.success(
      searchType: type,
      isTypeLocked: isLocked,
      results: [],
    ));
  }

  /// يتم استدعاؤها عند تغيير نوع البحث من القائمة المنسدلة
  void searchTypeChanged(SearchType newType) {
    if (state is! SearchSuccess) return;
    final currentState = state as SearchSuccess;
    if (currentState.isTypeLocked) return;

    // عند تغيير النوع، نصدر حالة جديدة بفلاتر ونتائج فارغة
    emit(SearchState.success(
      searchType: newType,
      isTypeLocked: false,
      results: [],
    ));
  }

  /// دالة واحدة قوية لتحديث الفلاتر وبدء بحث جديد
  /// يتم استدعاؤها عند الضغط على "تم" في أي حقل بحث
  void applyFiltersAndSearch({
    String? keyword,
    String? location,
    String? jobSearch,
    List<String>? skills,
    int? minSalary,
    int? maxSalary,
  }) {
    if (state is! SearchSuccess) return;
    final currentState = state as SearchSuccess;

    // نبدأ بحالة التحميل
    emit(const SearchState.loading());

    // نقوم بتنفيذ البحث بالفلترة الجديدة
    _performSearch(
      page: 1, // نبدأ دائماً من الصفحة الأولى عند البحث
      searchType: currentState.searchType,
      isTypeLocked: currentState.isTypeLocked,
      keyword: keyword,
      location: location,
      jobSearch: jobSearch,
      skills: skills,
      minSalary: minSalary,
      maxSalary: maxSalary,
    );
  }

  /// يتم استدعاؤها عند التمرير لنهاية القائمة
  void loadMoreResults() async {
    if (state is! SearchSuccess) return;
    final currentState = state as SearchSuccess;

    // نتأكد أننا لا نقوم بالتحميل بالفعل، وأننا لم نصل لآخر صفحة
    if (currentState.isLoadingMore || currentState.hasReachedMax) return;

    // نصدر حالة جديدة لإظهار مؤشر التحميل في أسفل القائمة
    emit(currentState.copyWith(isLoadingMore: true));

    final nextPage = currentState.currentPage + 1;

    // نطلب الصفحة التالية بنفس الفلاتر الحالية
    _performSearch(
      page: nextPage,
      searchType: currentState.searchType,
      isTypeLocked: currentState.isTypeLocked,
      keyword: currentState.keyword,
      location: currentState.location,
      jobSearch: currentState.jobSearch,
      skills: currentState.skills,
      minSalary: currentState.minSalary,
      maxSalary: currentState.maxSalary,
      isLoadMore: true,
    );
  }

  /// دالة البحث الداخلية التي تتواصل مع الـ Repository
  Future<void> _performSearch({
    required int page,
    required SearchType searchType,
    required bool isTypeLocked,
    String? keyword,
    String? location,
    String? jobSearch,
    List<String>? skills,
    int? minSalary,
    int? maxSalary,
    bool isLoadMore = false,
  }) async {
    ApiResult<List<dynamic>> result;

    // اختيار الدالة المناسبة بناءً على نوع البحث
    switch (searchType) {
      case SearchType.jobs:
        result = await _searchRepository.searchJobs(page: page, keyword: keyword, location: location, skills: skills, minSalary: minSalary, maxSalary: maxSalary);
        break;
      case SearchType.companies:
        result = await _searchRepository.searchCompanies(page: page, keyword: keyword, location: location);
        break;
      case SearchType.jobSeekers:
        result = await _searchRepository.searchUsers(page: page, keyword: keyword, jobTitle: jobSearch);
        break;
    }

    final currentState = state;
    if (currentState is! SearchSuccess && !isLoadMore && currentState is! SearchLoading) return;
    final currentSuccessState = isLoadMore ? (currentState as SearchSuccess) : null;

    // التعامل مع نتيجة الـ API
    switch (result) {
      case Success(data: final data):
        emit(SearchState.success(
          searchType: searchType,
          isTypeLocked: isTypeLocked,
          keyword: keyword,
          location: location,
          jobSearch: jobSearch,
          skills: skills ?? [],
          minSalary: minSalary,
          maxSalary: maxSalary,
          results: isLoadMore ? (List.of(currentSuccessState!.results)..addAll(data)) : data,
          currentPage: page,
          isLoadingMore: false,
          hasReachedMax: data.length < 15,
        ));
        break;
      case Failure(:final apiErrorModel):
        if (isLoadMore) {
          emit((currentState as SearchSuccess).copyWith(isLoadingMore: false));
        } else {
          emit(SearchState.error(apiErrorModel));
        }
        break;
    }
  }
}
