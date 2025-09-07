import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_chip.dart';

class JobDetailsTagsSection extends StatelessWidget {
  final JobModel job;

  const JobDetailsTagsSection({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    final List<String> skillsTags = (job.skills ?? [])
        .where((skill) => skill != null && skill.isNotEmpty)
        .cast<String>()
        .toList();

    if (skillsTags.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      spacing: 12.0,
      runSpacing: 8.0,
      children: skillsTags
          .map((tag) => CustomChip(
        labelText: tag,
      ))
          .toList(),
    );
  }
}