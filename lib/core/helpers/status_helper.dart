import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';

class StatusHelper {
  // هذه الدالة أصبحت عامة ويمكن استدعاؤها من أي مكان
  static Color getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
      case 'accepted':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      case 'pending':
        return Colors.orange;
      case 'interview':
        return ColorsManager.primary;
      default:
        return Colors.grey;
    }
  }

  // هذه الدالة أيضًا أصبحت عامة
  static IconData getStatusIcon(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
      case 'accepted':
        return Icons.check_circle;
      case 'rejected':
        return Icons.cancel;
      case 'pending':
        return Icons.pending_actions;
      case 'interview':
        return Icons.calendar_today;
      default:
        return Icons.info_outline;
    }
  }
}