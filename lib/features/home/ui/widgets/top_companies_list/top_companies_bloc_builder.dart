import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_error_model.dart';
import 'package:grad_comp/features/home/logic/companies/top_companies_cubit.dart';
import 'package:grad_comp/features/home/ui/widgets/top_companies_list/top_companies_list_view.dart';
import 'package:grad_comp/features/home/ui/widgets/top_companies_list/top_companies_shimmer_loading.dart';
import '../../../data/models/companies/company_model.dart';
import '../../../logic/companies/top_companies_state.dart';

class TopCompaniesBlocBuilder extends StatelessWidget {
  const TopCompaniesBlocBuilder({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopCompaniesCubit, TopCompaniesState>(
      buildWhen: (previous, current) {
        return current is TopCompaniesLoading ||
            current is TopCompaniesSuccess ||
            current is TopCompaniesError ;
      },
      builder: (context, state) {
        switch (state) {
          case TopCompaniesLoading():
            return setupLoading();
          case TopCompaniesSuccess(companies: final companiesList):
            return setupSuccess(companiesList);
          case TopCompaniesError(:final apiErrorModel):
            return setupError(apiErrorModel);

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
  Widget setupLoading() {
    return const TopCompaniesShimmerLoading();
  }

  Widget setupSuccess(List<CompanyModel> companiesListModel) {
    if (companiesListModel.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text("No top companies found."),
        ),
      );
    }
    return TopCompaniesListView(companiesListModel: companiesListModel);
  }

  Widget setupError (ApiErrorModel apiErrorModel) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(
          apiErrorModel.getAllErrorMesseges() ?? "Failed to load companies. Please try again.",
          textAlign: TextAlign.center,
        ),
      ),
    );
    //return const SizedBox.shrink();
  }
}



