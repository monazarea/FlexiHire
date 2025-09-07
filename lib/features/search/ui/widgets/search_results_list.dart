import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/vertical_job_card.dart';
import 'package:grad_comp/features/companies/ui/widgets/company_card.dart';
import 'package:grad_comp/features/job_seekers/ui/widgets/job_seeker_card.dart';
import 'package:grad_comp/features/search/logic/search_cubit.dart';
import 'package:grad_comp/features/search/logic/search_state.dart';
import 'package:grad_comp/features/search/logic/search_type.dart';

class SearchResultsList extends StatefulWidget {
  const SearchResultsList({super.key});

  @override
  State<SearchResultsList> createState() => _SearchResultsListState();
}

class _SearchResultsListState extends State<SearchResultsList> {
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
    if (!_isBottom) return;
    context.read<SearchCubit>().loadMoreResults();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        switch (state) {
          case SearchLoading():
            return const Center(child: CircularProgressIndicator());
          case SearchError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'Error'));
          case SearchSuccess(
          results: final results,
          searchType: final searchType,
          keyword: final keyword,
          hasReachedMax: final hasReachedMax,
          isLoadingMore: final isLoadingMore
          ):
            if (results.isEmpty) {
              if (keyword != null && keyword.isNotEmpty) {
                return Center(child: Text('No results found for "$keyword"'));
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.content_paste_search, size: 110, color: ColorsManager.primary.withOpacity(0.5)),
                    SizedBox(height: 16),
                    Text('Find your next opportunity',style: TextStyle(color: Colors.grey.shade700),),
                  ],
                ),
              );
            }
            return ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: hasReachedMax ? results.length : results.length + 1,
              itemBuilder: (context, index) {
                if (index >= results.length) {
                  return isLoadingMore
                      ? const Center(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ))
                      : const SizedBox.shrink();
                }
                final item = results[index];
                switch (searchType) {
                  case SearchType.jobs:
                    return VerticalJobCard(job: item, highlightTerm: keyword);
                  case SearchType.companies:
                    return CompanyCard(company: item,
                      highlightTerm: keyword,
                      onTap: () {
                      print('Tapped on Company: ${item.id}',);
                    },onFollowTapped:  () {
                          print('Follow button tapped for company ${item.id}');
                        },
                    );
                  case SearchType.jobSeekers:
                    return JobSeekerCard(jobSeeker: item, highlightTerm: keyword);
                }
              },
            );
          default:
            return const Center(child: Text('Start by typing in the search bar.'));
        }
      },
    );
  }
}