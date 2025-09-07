import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

class TextStyles{
  static TextStyle font24WhiteBold=TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle font16WhiteBold=TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle font16BlackBold=TextStyle(
      fontSize: 16.sp,
      fontWeight:FontWeight.bold,
      color: Colors.black
  );

  static TextStyle fontWhiteBold=const TextStyle(
    //fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle font14LightGrayW400=TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.lightGray,
  );
  static TextStyle font14DarkW500=TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.dark,
  );
  static TextStyle font13DarkBlueW400=TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font18WhiteW600=TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.white,
  );
  static TextStyle font13DarkW400=TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.dark,
  );
  static TextStyle font13DarkBlueW600=TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13GrayW400 = TextStyle(
    fontSize: 13.sp,
    fontWeight:FontWeight.w400,
    color: ColorsManager.gray,
  );
  static TextStyle font13DarkW500=TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.dark,
  );
  static TextStyle font14BlueW600=TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.primary,
  );
  static final TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle notYet = TextStyle(fontSize: 16.sp, color: Colors.grey);

  static final TextStyle font22BlackBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static final TextStyle font18BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );



  // Styles for Buttons and White Text
  static final TextStyle font16WhiteW600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );


  static final TextStyle font14GrayW500 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade700,
  );


  static final TextStyle font13PrimaryW500 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.primary,
  );
}
