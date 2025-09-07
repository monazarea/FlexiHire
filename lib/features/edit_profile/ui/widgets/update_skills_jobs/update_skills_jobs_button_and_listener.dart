// lib/features/edit_profile/ui/widgets/update_skills_jobs_button_and_listener.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/shrink_wrap_button.dart';

import '../../../logic/update_skills_jobs/update_skills_jobs_cubit.dart';
import '../../../logic/update_skills_jobs/update_skills_jobs_state.dart';

class UpdateSkillsJobsButtonAndListener extends StatefulWidget {
  final VoidCallback onSavePressed;
  final VoidCallback onUpdateSuccess;

  const UpdateSkillsJobsButtonAndListener({
    super.key,
    required this.onSavePressed,
    required this.onUpdateSuccess,
  });

  @override
  State<UpdateSkillsJobsButtonAndListener> createState() => _UpdateSkillsJobsButtonAndListenerState();
}

class _UpdateSkillsJobsButtonAndListenerState extends State<UpdateSkillsJobsButtonAndListener> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateSkillsJobsCubit, UpdateSkillsJobsState>(
      listener: (context, state) {
        switch (state) {
          case UpdateSkillsJobsLoading():
            setState(() => _isLoading = true);
            break;
          case UpdateSkillsJobsSuccess(message: final message):
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            );
            widget.onUpdateSuccess();
            break;
          case UpdateSkillsJobsError(error: final error):
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
            break;

        }
      },
      child: Center(
        child: ShrinkWrapButton(
          textStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
          //backgroundColor: ColorsManager.primary.withOpacity(0.8),
          buttonText: 'Update',
          onPressed: () {
            print("clicekd");
             widget.onSavePressed;
          },
        ),
      ),
    );
  }
}