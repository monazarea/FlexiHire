// lib/features/apply_job/ui/widgets/proposal_text_field.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';

class ProposalTextField extends StatelessWidget {
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;

  const ProposalTextField({
    super.key,
    required this.controller,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Form(
          key: formKey,
          child: AppTextFormField(
            controller: controller,
            hintText: "Describe why you're a good fit...",
            maxLines: null,
            backgroundColor: Colors.white,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please describe your fit for this position.';
              }
              return null;
            },
            contentPadding: EdgeInsets.zero,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}