import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/jobs/ui/widgets/jobs_list_body.dart';

import '../logic/job_list_cubit.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JobsListCubit>()..fetchInitialJobs(),
      // 2. هنا نستدعي الويدجت الجديد الذي يحتوي على الواجهة
      child: const JobsListBody(),
    );
  }
}