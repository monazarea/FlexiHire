import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';

class ApplicationStatusInfo extends StatelessWidget {
  final String? status;
  final String? proposalDate;

  const ApplicationStatusInfo({super.key, this.status, this.proposalDate});

  @override
  Widget build(BuildContext context) {
    String getFormattedDate(String? date) {
      if (date == null) return 'N/A';
      return date.split(' ')[0];
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          getFormattedDate(proposalDate),
          style: TextStyles.font13GrayW400,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: _getStatusColor(status).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(_getStatusIcon(status), color: _getStatusColor(status), size: 16),
              const SizedBox(width: 6.0),
              Text(
                status ?? 'Pending',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _getStatusColor(status),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }

  Color _getStatusColor(String? status) {
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

  IconData _getStatusIcon(String? status) {
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