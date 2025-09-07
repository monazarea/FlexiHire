import 'package:flutter/material.dart';
import 'package:grad_comp/core/widgets/vertical_job_card.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

class JobsListView extends StatelessWidget {
  final List<JobModel> jobs;
  final bool hasReachedMax;
  final bool isLoadingMore;
  final ScrollController scrollController;

  const JobsListView({
    super.key,
    required this.jobs,
    required this.hasReachedMax,
    required this.isLoadingMore,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    if (jobs.isEmpty) {
      return const Center(child: Text('No jobs found.'));
    }

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16.0),
      itemCount: hasReachedMax ? jobs.length : jobs.length + 1,
      itemBuilder: (context, index) {
        if (index >= jobs.length) {
          return isLoadingMore
              ? const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ))
              : const SizedBox.shrink();
        }
        final job = jobs[index];
        return VerticalJobCard(
          job: job,

        );
      },
    );
  }
}