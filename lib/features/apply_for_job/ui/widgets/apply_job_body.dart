// lib/features/apply_job/ui/widgets/apply_job_body.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import '../../logic/apply_for_job_cubit.dart';
import '../../logic/apply_for_job_state.dart';
import 'apply_action_buttons.dart';
import 'proposal_text_field.dart';

class ApplyJobBody extends StatefulWidget {
  final int jobId;
  const ApplyJobBody({super.key, required this.jobId});

  @override
  State<ApplyJobBody> createState() => _ApplyJobBodyState();
}

class _ApplyJobBodyState extends State<ApplyJobBody> {
  final TextEditingController _proposalController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _proposalController.dispose();
    super.dispose();
  }

  void _submitApplication() {
    if (_formKey.currentState!.validate()) {
      context.read<ApplyForJobCubit>().submitApplication(
        jobId: widget.jobId,
        proposal: _proposalController.text,
      );
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle_outline, color: Colors.green, size: 80.sp),
                SizedBox(height: 16.h),
                Text('Applied Successfully!', style: TextStyles.font18BlackBold),
                SizedBox(height: 8.h),
                Text(
                  'Your application has been sent.',
                  textAlign: TextAlign.center,
                  style: TextStyles.font13GrayW400,
                ),
              ],
            ),
          ),
        );
      },
    );

    Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.of(context).pop(); // لإغلاق الـ Dialog
      Navigator.of(context).pop(true); // للعودة من شاشة التقديم
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplyForJobCubit, ApplyForJobState>(
      listener: (context, state) {
        switch (state) {
          case ApplyForJobSuccess():
            _showSuccessDialog();
            break;
          case ApplyForJobError(:final apiErrorModel):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(apiErrorModel.getAllErrorMesseges() ?? 'An error occurred.'),
                backgroundColor: Colors.red,
              ),
            );
            break;
          default:
            break;
        }
      },
      child: Scaffold(
        backgroundColor: ColorsManager.moreLightBlue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close, color: Colors.black, size: 30.r),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Submit Your Proposal', style: TextStyles.font18BlackBold),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            children: [
              ProposalTextField(
                controller: _proposalController,
                formKey: _formKey,
              ),
              SizedBox(height: 24.h),
              ApplyActionButtons(onSubmit: _submitApplication),
            ],
          ),
        ),
      ),
    );
  }
}