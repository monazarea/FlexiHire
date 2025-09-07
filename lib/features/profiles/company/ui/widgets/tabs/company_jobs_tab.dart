import 'package:flutter/material.dart';
import 'package:grad_comp/core/helpers/company_job_mapper.dart';

import '../../../../../../core/widgets/vertical_job_card.dart';
import '../../../data/models/company_job_model.dart';

class CompanyJobsTab extends StatelessWidget {
  final List<CompanyJobModel> jobs;
  final int? highlightJobId;

  const CompanyJobsTab({super.key, required this.jobs,this.highlightJobId});

  @override
  Widget build(BuildContext context) {
    if (jobs.isEmpty) {
      return const Center(child: Text('No jobs available'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final converted = jobs[index].toJobModel();
        final bool isNew = (converted.id == highlightJobId);
        return VerticalJobCard(job: converted,isNew: isNew);
      },
    );
  }
}
