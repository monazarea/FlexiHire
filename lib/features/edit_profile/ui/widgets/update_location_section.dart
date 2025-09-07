import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/edit_profile/logic/edit_location/update_location_cubit.dart';
import 'update_location_button_and_listener.dart'; // <-- استدعاء الزر الجديد

class UpdateLocationSection extends StatelessWidget {
  final VoidCallback onUpdateSuccess;
  const UpdateLocationSection({super.key, required this.onUpdateSuccess});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Form(
        key: context.read<UpdateLocationCubit>().formKey,
        child: Column(
          children: [
            const SectionTitle(title: 'Update Your Location'),
            SizedBox(height: 16.h),
            // -->> استخدام AppTextFormField <<--
            AppTextFormField(
              controller: context.read<UpdateLocationCubit>().locationController,
              hintText: 'Enter your location (e.g., Cairo, Egypt)',
             // prefixIcon: const Icon(Icons.location_on_outlined),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Location cannot be empty.';
                }
                return null;
              },
            ),
            SizedBox(height: 24.h),
            // -->> استخدام الزر والمستمع الجديد <<--
            UpdateLocationButtonAndListener(onUpdateSuccess: onUpdateSuccess),
          ],
        ),
      ),
    );
  }
}