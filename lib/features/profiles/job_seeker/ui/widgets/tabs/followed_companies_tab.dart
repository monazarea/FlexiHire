import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/features/companies/ui/widgets/company_card.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/followed_companies_tab/followed_companies_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/followed_companies_tab/followed_companies_state.dart';

class FollowedCompaniesTab extends StatefulWidget {
  final bool isOwner;
  const FollowedCompaniesTab({super.key, required this.isOwner});

  @override
  State<FollowedCompaniesTab> createState() => _FollowedCompaniesTabState();
}

class _FollowedCompaniesTabState extends State<FollowedCompaniesTab> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // جلب البيانات عند بناء الويدجت لأول مرة
    context.read<FollowedCompaniesCubit>().fetchInitialFollowedCompanies();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<FollowedCompaniesCubit>().loadMoreFollowedCompanies();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowedCompaniesCubit, FollowedCompaniesState>(
      builder: (context, state) {
        switch (state) {
          case FollowedCompaniesInitial():
          case FollowedCompaniesLoading():
            return const Center(child: CircularProgressIndicator());

          case FollowedCompaniesError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'Error'));

          case FollowedCompaniesSuccess(
              companies: final companies,
              hasReachedMax: final hasReachedMax,
              isLoadingMore: final isLoadingMore,
            ):
            if (companies.isEmpty) {
              return const Center(
                  child: Text('No followed companies yet'));
            }
            return ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              itemCount:
                  hasReachedMax ? companies.length : companies.length + 1,
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
                // نستخدم كارت الشركة الذي صممناه سابقاً
                return CompanyCard(
                  key: ValueKey(company.id),
                  company: company,
                  showFollowButton: widget.isOwner,


                );
              },
            );

          default:
            return const Center(child: Text('Something went wrong.'));
        }
      },
    );
  }
}
