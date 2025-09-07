// lib/features/job_details/ui/job_details_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/job_details/logic/job_details_cubit.dart';
import 'widgets/job_details_body.dart';

class JobDetailsScreen extends StatelessWidget {
  final String jobId;
  const JobDetailsScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JobDetailsCubit>()..fetchJobDetails(jobId),
      child: const JobDetailsBody(),
    );
  }
}