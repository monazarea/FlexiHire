// lib/core/widgets/app_text_form_field.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;
  final TextInputType? keyboardType;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.suffixIcon,
    this.isObscureText,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.maxLines,
    this.minLines,
    this.focusNode,
    this.onEditingComplete,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: keyboardType,
      onEditingComplete: onEditingComplete,
      focusNode: focusNode,
      controller: controller,
      maxLines: isObscureText == true ? 1 : maxLines,
      minLines: minLines,
      // --------------------
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsManager.primary.withOpacity(0.8),
                  width: 1.4,
                ),
                borderRadius: BorderRadius.circular(16.0)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.lighterGray,
                  width: 1.4,
                ),
                borderRadius: BorderRadius.circular(16.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.4,
            ),
            borderRadius: BorderRadius.circular(16.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.4,
            ),
            borderRadius: BorderRadius.circular(16.0)),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayW400,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.morelightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font13DarkW500,
      validator: (value) {
        return validator(value);
      },
    );
  }
}