import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';

// هذه دالة مساعدة تعرض الـ Dialog وترجع true إذا ضغط المستخدم "Logout"
Future<bool?> showLogoutConfirmationDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        title: Text(
          'Confirm Logout',
          style: TextStyles.font18BlackBold,
        ),
        content: Text(
          'Are you sure you want to log out?',
          style: TextStyles.font13GrayW400,
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: ColorsManager.primary.withOpacity(0.1),
            ),
            child: const Text('Logout', style: TextStyle(color: ColorsManager.primary)),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
    },
  );
}