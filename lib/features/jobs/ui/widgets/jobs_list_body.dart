import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import '../../logic/job_list_cubit.dart';
import '../../logic/jobs_list_state.dart';
import 'jobs_list_view.dart'; // <-- استيراد الملف الجديد

class JobsListBody extends StatefulWidget {
  const JobsListBody({super.key});

  @override
  State<JobsListBody> createState() => _JobsListBodyState();
}

class _JobsListBodyState extends State<JobsListBody> {
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
      context.read<JobsListCubit>().loadMoreJobs();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      // appBar: AppBar(
      //   title: const Text('All Jobs'),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: BlocBuilder<JobsListCubit, JobsListState>(
        builder: (context, state) {
          switch (state) {
            case JobsListLoading():
              return const Center(child: CircularProgressIndicator());

            case JobsListError(:final apiErrorModel):
              return Center(
                  child: Text(apiErrorModel.getAllErrorMesseges() ?? 'Failed to load jobs.'));

            case JobsListSuccess(
            jobs: final jobs,
            hasReachedMax: final hasReachedMax,
            isLoadingMore: final isLoadingMore,
            ):
              if (jobs.isEmpty) {
                return const Center(child: Text('No Jobs found.'));
              }
              return JobsListView(
                jobs: jobs,
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