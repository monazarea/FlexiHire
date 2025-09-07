// lib/core/widgets/no_internet_connection_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wifi_off_rounded,
              size: 80.sp,
              color: Colors.grey[400],
            ),
            SizedBox(height: 24.h),
            Text(
              'No Internet Connection',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: ColorsManager.darkBlue,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Please check your internet connection and try again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}