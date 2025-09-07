import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/job_seekers/logic/job_seekers_list_cubit.dart';
import 'widgets/job_seekers_list_body.dart';

class JobSeekersScreen extends StatelessWidget {
  const JobSeekersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JobSeekersListCubit>()..fetchInitialJobSeekers(),
      child: const JobSeekersListBody(),
    );
  }
}