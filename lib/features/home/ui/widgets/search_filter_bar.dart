import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';

class SearchFilterBar extends StatelessWidget {
  final VoidCallback onTap;
  final String hintText;

  const SearchFilterBar({
    super.key,
    required this.onTap,
    this.hintText = 'Search Jobs, Companies...',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.sp),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: ColorsManager.lightGray),
            SizedBox(width: 8.w),
            Text(
              hintText,
              style: const TextStyle(color: ColorsManager.gray),
            ),
          ],
        ),
      ),
    );
  }
}