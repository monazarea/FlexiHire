import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/companies/logic/companies_list_cubit.dart';
import 'package:grad_comp/features/companies/logic/companies_list_state.dart';

import 'companies_list_view.dart';

class CompaniesListBody extends StatefulWidget {
  const CompaniesListBody({super.key});

  @override
  State<CompaniesListBody> createState() => _CompaniesListBodyState();
}

class _CompaniesListBodyState extends State<CompaniesListBody> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<CompaniesListCubit>().loadMoreCompanies();
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
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      // appBar: AppBar(
      //   title: const Text('All Companies'),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: BlocBuilder<CompaniesListCubit, CompaniesListState>(
        builder: (context, state) {
          switch (state) {
            case CompaniesListLoading():
              return const Center(child: CircularProgressIndicator());

            case CompaniesListError(:final apiErrorModel):
              return Center(child: Text(apiErrorModel.message ?? 'Failed to load companies.'));

            case CompaniesListSuccess(
            companies: final companies,
            hasReachedMax: final hasReachedMax,
            isLoadingMore: final isLoadingMore,
            ):
              if (companies.isEmpty) {
                return const Center(child: Text('No companies found.'));
              }
              return CompaniesListView(
                companies: companies,
                hasReachedMax: hasReachedMax,
                isLoadingMore: isLoadingMore,
                scrollController: _scrollController,
              );
            default:return const SizedBox.shrink();

          }
        },
      ),
    );
  }
}
