import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/save_job/data/repos/save_job_repository.dart';
import 'package:grad_comp/features/save_job/logic/save_job_cubit.dart';
import 'package:grad_comp/features/save_job/logic/save_job_state.dart';
import 'package:grad_comp/features/save_job/ui/widgets/save_job_button_ui.dart';

import '../../logic/save_job_update_service.dart';

class SaveJobButtonController extends StatefulWidget {
  final int jobId;
  final bool initialIsSaved;
  final Function(bool isNowSaved)? onStateChanged;

  const SaveJobButtonController({
    super.key,
    required this.jobId,
    required this.initialIsSaved,
    this.onStateChanged,
  });

  @override
  State<SaveJobButtonController> createState() => _SaveJobButtonControllerState();
}

class _SaveJobButtonControllerState extends State<SaveJobButtonController> {
  late SaveJobCubit _cubit;

  @override
  void initState() {
    super.initState();
    _createCubit();
  }

  void _createCubit() {
    _cubit = SaveJobCubit(
      getIt<SaveJobRepository>(),     // 1. Repository
      widget.jobId,                  // 2. Job ID
      widget.initialIsSaved,         // 3. Initial State
      getIt<SaveJobUpdateService>(), // 4. The Update Service (هذا هو المفقود غالبًا)
    );
  }

  @override
  void didUpdateWidget(covariant SaveJobButtonController oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialIsSaved != widget.initialIsSaved) {
      _cubit.close();
      _createCubit();
    }
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocConsumer<SaveJobCubit, SaveJobState>(
        listener: (context, state) {
          if (state.status == SaveJobStatus.success) {
            widget.onStateChanged?.call(state.isSaved);
          }
        },
        builder: (context, state) {
          final isLoading = state.status == SaveJobStatus.loading;
          return SaveJobButtonUI(
            isSaved: state.isSaved,
            isLoading: isLoading,
            onTap: isLoading ? null : () => context.read<SaveJobCubit>().toggleSave(),
          );
        },
      ),
    );
  }
}