import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/home/data/repos/home_repo.dart';
import 'package:grad_comp/features/home/logic/companies/top_companies_state.dart';

class TopCompaniesCubit extends Cubit<TopCompaniesState> {
  final HomeRepo _homeRepo;

  TopCompaniesCubit(this._homeRepo) : super(const TopCompaniesState.initial());

  void getTopCompanies() async {
    emit(const TopCompaniesState.topCompaniesLoading());
    final result = await _homeRepo.getTopCompanies();
    switch (result) {
      case Success(data: final companiesList):
        emit(TopCompaniesState.topCompaniesSuccess(companiesList));
        break;
      case Failure(:final apiErrorModel):
        emit(TopCompaniesState.topCompaniesError(apiErrorModel));
        break;
    }
  }

}