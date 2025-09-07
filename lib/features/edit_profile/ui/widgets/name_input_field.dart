import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';

import '../../logic/edit_name/edit_name_cubit.dart';

class NameInputFields extends StatelessWidget {
  const NameInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            contentPadding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
            hintText: 'First Name',
            controller: context.read<EditNameCubit>().firstNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter first name';
              }
              return null;
            },
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: AppTextFormField(
            contentPadding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
            hintText: 'Last Name',
            controller: context.read<EditNameCubit>().lastNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter last name';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}