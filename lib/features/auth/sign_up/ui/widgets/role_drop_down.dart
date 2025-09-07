// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grad_comp/core/theming/colors.dart';
// import '../../../../../core/theming/styles.dart';
//
// class RoleDropdown extends StatelessWidget {
//   final String? selectedRole;
//   final Function(String?) onChanged;
//
//   RoleDropdown({
//     Key? key,
//     required this.selectedRole,
//     required this.onChanged,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<String>(
//       constraints: BoxConstraints(
//         minWidth: 360.w, // العرض اللي انت عاوزه هنا
//       ),
//
//       onSelected: onChanged,
//       itemBuilder: (context) {
//         return [
//           PopupMenuItem<String>(
//             value: 'user',
//             child: Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(vertical: 10.h),
//               child: Text(
//                 'User',
//                 style: selectedRole == 'user'
//                     ? TextStyles.font14DarkW500.copyWith(color: ColorsManager.primary)
//                     : TextStyles.font14DarkW500,
//               ),
//             ),
//           ),
//           PopupMenuItem<String>(
//             value: 'company',
//             child: Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(vertical: 10.h),
//               child: Text(
//                 'Company',
//                 style: selectedRole == 'company'
//                     ? TextStyles.font14DarkW500.copyWith(color: ColorsManager.primary)
//                     : TextStyles.font14DarkW500,
//               ),
//             ),
//           ),
//         ];
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
//         decoration: BoxDecoration(
//           color: ColorsManager.morelightGray,
//           borderRadius: BorderRadius.circular(16.0),
//           border: Border.all(
//             color: ColorsManager.lighterGray,
//             width: 1.4,
//           ),
//         ),
//         child: Row(
//           children: [
//             Text(
//               selectedRole!,
//               style: selectedRole == 'company'||selectedRole=='user'
//                   ? TextStyles.font14DarkW500
//                   : TextStyles.font14LightGrayW400,
//             ),
//             Spacer(),
//             Icon(Icons.arrow_drop_down),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class RoleDropdown extends StatelessWidget {
  final String? selectedRole;
  final Function(String?) onChanged;

  const RoleDropdown({
    Key? key,
    required this.selectedRole,
    required this.onChanged,
  }) : super(key: key);

  // دالة مساعدة لتحويل القيمة إلى نص العرض
  String _getDisplayText(String? role) {
    if (role == 'user') {
      return 'Job Seeker';
    }
    if (role == 'company') {
      return 'Company';
    }
    // قيمة افتراضية إذا لم يتم اختيار شيء
    return 'Select a role';
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      constraints: BoxConstraints(
        minWidth: 360.w,
      ),
      onSelected: onChanged,
      itemBuilder: (context) {
        return [
          PopupMenuItem<String>(
            value: 'user', // القيمة الفعلية تبقى 'user'
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'Job Seeker', // -->> ١. تم تغيير النص هنا <<--
                style: selectedRole == 'user'
                    ? TextStyles.font14DarkW500.copyWith(color: ColorsManager.primary)
                    : TextStyles.font14DarkW500,
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'company',
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'Company',
                style: selectedRole == 'company'
                    ? TextStyles.font14DarkW500.copyWith(color: ColorsManager.primary)
                    : TextStyles.font14DarkW500,
              ),
            ),
          ),
        ];
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: ColorsManager.morelightGray,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: ColorsManager.lighterGray,
            width: 1.4,
          ),
        ),
        child: Row(
          children: [
            Text(
              // -->> ٢. نستخدم الدالة المساعدة هنا لعرض النص الصحيح <<--
              _getDisplayText(selectedRole),
              style: selectedRole == 'company' || selectedRole == 'user'
                  ? TextStyles.font14DarkW500
                  : TextStyles.font14LightGrayW400,
            ),
            const Spacer(),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
