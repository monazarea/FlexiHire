import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/styles.dart';
import '../../../logic/dashboard_screen/posted_jobs_cubit.dart';
import '../../../logic/dashboard_screen/posted_jobs_state.dart';
import 'posted_job_card.dart';

class PostedJobsList extends StatefulWidget {
  const PostedJobsList({super.key});

  @override
  State<PostedJobsList> createState() => _PostedJobsListState();
}

class _PostedJobsListState extends State<PostedJobsList> {
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
    context.read<PostedJobsCubit>().loadMoreJobs();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostedJobsCubit, PostedJobsState>(
      builder: (context, state) {
        switch (state) {
          case PostedJobsLoading():
            return const Center(child: CircularProgressIndicator());
          case PostedJobsError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'Error'));
          case PostedJobsSuccess(
          jobs: final jobs,
          hasReachedMax: final hasReachedMax,
          isLoadingMore: final isLoadingMore):
            if (jobs.isEmpty) {
              return Center(child: Text('You have not posted any jobs yet.',style: TextStyles.notYet,));
            }
            return ListView.separated(
              controller: _scrollController,
              itemCount: hasReachedMax ? jobs.length : jobs.length + 1,
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemBuilder: (context, index) {
                if (index >= jobs.length) {
                  return isLoadingMore
                      ? const Center(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ))
                      : const SizedBox.shrink();
                }
                return PostedJobCard(job: jobs[index]);
              },
            );
          default:
            return const Center(child: Text('Start by creating a new job.'));
        }
      },
    );
  }
}