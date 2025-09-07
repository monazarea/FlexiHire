  // lib/features/edit_profile/ui/widgets/update_name_button_and_listener.dart

  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:grad_comp/core/theming/colors.dart';
  import 'package:grad_comp/core/theming/styles.dart';
  import 'package:grad_comp/core/widgets/app_text_button.dart';
  import 'package:grad_comp/features/app_user/logic/user_cubit.dart';

  import '../../../../../core/helpers/constants.dart';
  import '../../../../../core/helpers/shared_pref_helper.dart';
  import '../../../../../core/widgets/shrink_wrap_button.dart';
  import '../../logic/edit_name/edit_name_cubit.dart';
  import '../../logic/edit_name/edit_name_state.dart';


  class UpdateNameButtonAndListener extends StatelessWidget {
    final VoidCallback onUpdateSuccess;

    const UpdateNameButtonAndListener({super.key, required this.onUpdateSuccess});

    @override
    Widget build(BuildContext context) {
      return BlocConsumer<EditNameCubit, EditNameState>(
        buildWhen: (previous, current) {
          return current is EditNameSuccess || current is EditNameError;
        },
        listener: (context, state) {
          switch (state) {
            case EditNameSuccess():
              final cubit = context.read<EditNameCubit>();
              final newFirstName = cubit.firstNameController.text;
              final newLastName = cubit.lastNameController.text;

              SharedPrefHelper.setData(
                SharedPrefKeys.userName,
                '$newFirstName $newLastName',
              );
              onUpdateSuccess();
              //context.read<UserCubit>().updateUserName(newFirstName, newLastName);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Name updated successfully!"),
                backgroundColor: Colors.green,),
              );
              break;
            case EditNameError(apiErrorModel: final apiErrorModel):
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(apiErrorModel.message ?? "Failed to update name. Please try again."),
                  backgroundColor: Colors.red,
                ),
              );
              break;
            default:
          }
        },
        builder: (context, state) {
          if (state is EditNameLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Center(
            child: ShrinkWrapButton(
                buttonText: 'Update',
                textStyle: TextStyle(color: Colors.white,fontSize: 16.sp),
                //backgroundColor: ColorsManager.primary,
                onPressed: () {
                  context.read<EditNameCubit>().updateName();
                }),
          );
        },
      );
    }
  }
