
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/companies_list_cubit.dart';
import 'company_card.dart';

class CompaniesListView extends StatelessWidget {
  final List<CompanyModel> companies;
  final bool hasReachedMax;
  final bool isLoadingMore;
  final ScrollController scrollController;

  const CompaniesListView({
    super.key,
    required this.companies,
    required this.hasReachedMax,
    required this.isLoadingMore,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16.0),
      itemCount: hasReachedMax ? companies.length : companies.length + 1,
      itemBuilder: (context, index) {
        if (index >= companies.length) {
          return isLoadingMore
              ? const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ))
              : const SizedBox.shrink();
        }
        final company = companies[index];
        final bool shouldShowFollowButton = userRole != 'company';
        return CompanyCard(
          showFollowButton: shouldShowFollowButton,
          key: ValueKey(company.id),
          company: company,
          onFollowStateChanged: (isNowFollowing) {
            // نطلب من الكيوبت الأب تحديث حالة هذه الشركة في قائمته
            context.read<CompaniesListCubit>().updateFollowStateInList(company.id, isNowFollowing);
          },

        );
      },
    );
  }
}