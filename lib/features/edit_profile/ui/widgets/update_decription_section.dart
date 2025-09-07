import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // عشان context.read
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_description_button_and_listener.dart';

import '../../../../../core/widgets/section_container.dart'; // ده الـ Container اللي بيعمل الشكل العام للـ Section
import '../../../../../core/widgets/section_title.dart'; // ده الـ Widget بتاع الـ Title
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../logic/edit_description/update_description_cubit.dart'; // ده الـ Text Field بتاعك

class UpdateDescriptionSection extends StatelessWidget {
  final VoidCallback onUpdateSuccess;
  const UpdateDescriptionSection({super.key,required this.onUpdateSuccess});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Form(
        key: context.read<UpdateDescriptionCubit>().formKey,
        child: Column(
          children: [
            const SectionTitle(title: 'Update Your Description'),
            SizedBox(height: 16.h),
            AppTextFormField(
              controller: context.read<UpdateDescriptionCubit>().descriptionController,
              hintText: 'Enter your professional description',
              maxLines: 5,
              minLines: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Description cannot be empty';
                }
                return null;
              },
            ),
            SizedBox(height: 24.h),
            UpdateDescriptionButtonAndListener(onUpdateSuccess: onUpdateSuccess,),
          ],
        ),
      ),
    );
  }
}