import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import '../logic/apply_for_job_cubit.dart';
import 'widgets/apply_job_body.dart';

class ApplyJobScreen extends StatelessWidget {
  final int jobId;
  const ApplyJobScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ApplyForJobCubit>(),
      child: ApplyJobBody(jobId: jobId),
    );
  }
}