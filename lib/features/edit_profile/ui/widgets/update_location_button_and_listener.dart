// lib/features/edit_profile/ui/widgets/update_location_button_and_listener.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/shrink_wrap_button.dart';
import '../../logic/edit_location/update_location_cubit.dart';
import '../../logic/edit_location/update_location_state.dart';

class UpdateLocationButtonAndListener extends StatefulWidget {
  final VoidCallback onUpdateSuccess;

  const UpdateLocationButtonAndListener({
    super.key,
    required this.onUpdateSuccess,
  });

  @override
  State<UpdateLocationButtonAndListener> createState() => _UpdateLocationButtonAndListenerState();
}

class _UpdateLocationButtonAndListenerState extends State<UpdateLocationButtonAndListener> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateLocationCubit, UpdateLocationState>(
      listener: (context, state) {
        switch (state) {
          case UpdateLocationLoading():
            setState(() => _isLoading = true);
            break;
          case UpdateLocationSuccess(message: final message):
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            );
            widget.onUpdateSuccess(); // <-- هذا السطر يخبر الشاشة الأم أن التعديل نجح
            break;
          case UpdateLocationError(error: final error):
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
            context.read<UpdateLocationCubit>().updateLocation();
          },
        ),
      ),
    );
  }
}