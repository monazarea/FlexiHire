import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/job_seekers/logic/job_seekers_list_cubit.dart';
import 'package:grad_comp/features/job_seekers/logic/job_seekers_list_state.dart';
import 'job_seekers_list_view.dart';

class JobSeekersListBody extends StatefulWidget {
  const JobSeekersListBody({super.key});

  @override
  State<JobSeekersListBody> createState() => _JobSeekersListBodyState();
}

class _JobSeekersListBodyState extends State<JobSeekersListBody> {
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
      context.read<JobSeekersListCubit>().loadMoreJobSeekers();
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
      //   title: const Text('Job Seekers'),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: BlocBuilder<JobSeekersListCubit, JobSeekersListState>(
        builder: (context, state) {
          switch (state) {
            case JobSeekersListLoading():
              return const Center(child: CircularProgressIndicator());

            case JobSeekersListError(:final apiErrorModel):
              return Center(child: Text(apiErrorModel.message ?? 'Failed to load users.'));

            case JobSeekersListSuccess(
            jobSeekers: final jobSeekers,
            hasReachedMax: final hasReachedMax,
            isLoadingMore: final isLoadingMore,
            ):
              return JobSeekersListView(
                jobSeekers: jobSeekers,
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
