// lib/features/edit_profile/ui/widgets/update_name_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/edit_profile/ui/widgets/update_name_button_and_listener.dart';

import '../../logic/edit_name/edit_name_cubit.dart';
import 'name_input_field.dart';

class UpdateNameSection extends StatelessWidget {
  final VoidCallback onUpdateSuccess;
  const UpdateNameSection({
    super.key,
    required this.onUpdateSuccess, // 2. جعلها مطلوبة
  });

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Form(
        key: context.read<EditNameCubit>().formKey,
        child: Column(
          children: [
            const SectionTitle(title: 'Update Your Name'),
            SizedBox(height: 16.h),
            const NameInputFields(),
            SizedBox(height: 24.h),
            UpdateNameButtonAndListener(onUpdateSuccess: onUpdateSuccess,),
          ],
        ),
      ),
    );
  }
}