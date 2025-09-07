import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';

import '../../../../../core/widgets/shrink_wrap_button.dart';
import '../../logic/edit_description/update_description_cubit.dart';
import '../../logic/edit_description/update_description_state.dart';


class UpdateDescriptionButtonAndListener extends StatelessWidget {
  final VoidCallback onUpdateSuccess;
  const UpdateDescriptionButtonAndListener({super.key,required this.onUpdateSuccess});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateDescriptionCubit, UpdateDescriptionState>(
      buildWhen: (previous, current) {
        return current is DescriptionLoading || current is DescriptionSuccess || current is DescriptionError;
      },
      listener: (context, state) {
        switch (state) {
          case DescriptionSuccess():
            onUpdateSuccess();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Description updated successfully!"),
                backgroundColor: Colors.green,
              ),
            );
            break;
          case DescriptionError(apiErrorModel: final apiErrorModel):
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(apiErrorModel.message ?? "Failed to update description. Please try again."),
                backgroundColor: Colors.red,
              ),
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        if (state is DescriptionLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Center(
          child: ShrinkWrapButton(
            buttonText: 'Update',
            textStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
            //backgroundColor: ColorsManager.primary,
            onPressed: () {
              context.read<UpdateDescriptionCubit>().updateDescription();
            },
          ),
        );
      },
    );
  }
}