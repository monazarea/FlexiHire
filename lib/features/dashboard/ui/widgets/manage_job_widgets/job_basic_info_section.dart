import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import '../../../logic/manage_job/manage_job_cubit.dart';

class JobBasicInfoSection extends StatelessWidget {
  const JobBasicInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManageJobCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 👇 عنوان حقل العنوان
        const SectionTitle(title: "Job Title"),
        SizedBox(height: 10.h),
        AppTextFormField(
          controller: cubit.titleController,
          hintText: 'e.g. Senior Flutter Developer',
          suffixIcon: const Icon(Icons.work_outline),
          validator: (value) =>
          (value == null || value.trim().isEmpty) ? 'Title is required' : null,
        ),
        const SizedBox(height: 20),

        // 👇 عنوان حقل الموقع
        const SectionTitle(title: "Location"),
        SizedBox(height: 10.h),
        AppTextFormField(
          controller: cubit.locationController,
          hintText: 'e.g. Riyadh, Saudi Arabia',
          suffixIcon: const Icon(Icons.location_on_outlined),
          validator: (value) =>
          (value == null || value.trim().isEmpty) ? 'Location is required' : null,
        ),
        SizedBox(height: 20.h),

        // 👇 عنوان حقل الوصف
        const SectionTitle(title: "Description"),
        SizedBox(height: 10.h),
        AppTextFormField(

          controller: cubit.descriptionController,
          hintText: 'Describe the responsibilities, requirements, etc.',
          maxLines: 8,
          minLines: 5,
          validator: (value) =>
          (value == null || value.trim().isEmpty) ? 'Description is required' : null,
        ),
      ],
    );
  }
}
