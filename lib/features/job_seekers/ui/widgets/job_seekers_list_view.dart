
import 'package:flutter/material.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/features/job_seekers/data/models/job_seeker_list_item_model.dart';
import '../../../../core/routing/routes.dart';
import 'job_seeker_card.dart';

class JobSeekersListView extends StatelessWidget {
  final List<JobSeekerListItemModel> jobSeekers;
  final bool hasReachedMax;
  final bool isLoadingMore;
  final ScrollController scrollController;

  const JobSeekersListView({
    super.key,
    required this.jobSeekers,
    required this.hasReachedMax,
    required this.isLoadingMore,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16.0),
      itemCount: hasReachedMax ? jobSeekers.length : jobSeekers.length + 1,
      itemBuilder: (context, index) {
        if (index >= jobSeekers.length) {
          return isLoadingMore
              ? const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ))
              : const SizedBox.shrink();
        }
        final jobSeeker = jobSeekers[index];
        return JobSeekerCard(
          jobSeeker: jobSeeker,

          // 4. تمرير دالة الـ Contact
          onContactTapped: () {
            print('Contact button tapped for Job Seeker ID: ${jobSeeker.id}');
          },
        );
      },
    );
  }
}