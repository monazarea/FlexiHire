// lib/core/widgets/delete_confirmation_dialog.dart

import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/styles.dart';

// 1. الدالة الآن تستقبل العنوان والمحتوى
Future<bool?> showDeleteConfirmationDialog({
  required BuildContext context,
  required String title,
  required String content,
}) {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        // 2. نستخدم العنوان الممرر
        title: Text(title, style: TextStyles.font18BlackBold),
        // 3. نستخدم المحتوى الممرر
        content: Text(content, style: TextStyles.font13GrayW400),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red.withOpacity(0.1),
            ),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      );
    },
  );
}