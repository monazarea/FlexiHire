import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../data/models/get_notification/notification_model.dart';
import 'notification_navigation_helper.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;
  final VoidCallback onMarkAsRead;
  final VoidCallback onDelete;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.onMarkAsRead,
    required this.onDelete,
  });

  IconData _getIconForNotification(String type) {
    switch (type) {
      case 'new_job_post': return Icons.work_outline;
      case 'job_status': return Icons.check_circle_outline;
      case 'new_application': return Icons.person_add_alt_1_outlined;
      case 'new_review': return Icons.star_border_outlined;
      case 'chat_message': return Icons.chat_bubble_outline;
      default: return Icons.notifications_none;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isUnread = notification.readAt == null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
              color: ColorsManager.primary.withOpacity(0.2), width: 1.0.w),
        ),
        color: isUnread ? ColorsManager.primary.withOpacity(0.15) : Colors.white,
        child: InkWell(
          onTap: () {
            if (isUnread) {
              onMarkAsRead();
            }
            NotificationNavigationHelper.handleNotificationTap(context, notification);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(notification.data.type=="new_review"?"New Review":notification.data.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          const SizedBox(height: 4),
                          Text(notification.data.message,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade800)),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          timeago.format(notification.createdAt, locale: 'en_short'),
                          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        if (isUnread)
                          TextButton(
                            onPressed: onMarkAsRead,
                            child: const Text('Mark as Read'),
                            style: TextButton.styleFrom(
                              foregroundColor: ColorsManager.darkBlue,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        SizedBox(width: 8.w,),
                        TextButton(
                          onPressed: onDelete,
                          child: const Text('Delete'),
                          style: TextButton.styleFrom(
                            foregroundColor: ColorsManager.darkBlue,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
