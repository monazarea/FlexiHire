import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../data/models/get_notification/notification_model.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notification;

  const NotificationTile({
    super.key,
    required this.notification,
  });

  // دالة لتحديد الأيقونة بناءً على نوع الإشعار
  IconData _getIconForNotification(String type) {
    switch (type) {
      case 'new_job_post':
        return Icons.work_outline;
      case 'job_status':
        return Icons.check_circle_outline;
      case 'new_applicant':
        return Icons.person_add_alt_1_outlined;
      default:
        return Icons.notifications_none;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isUnread = notification.readAt == null;

    return InkWell(
      onTap: () {
        // TODO: Implement navigation logic based on notification type
        // مثال: عند الضغط، انتقل إلى تفاصيل الوظيفة
        // Navigator.pushNamed(context, Routes.jobDetailsScreen, arguments: notification.data.job.id.toString());
        print('Notification tapped: ${notification.id}');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        // تمييز الإشعار غير المقروء بلون مختلف
        color: isUnread ? Colors.blue.withOpacity(0.05) : Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // الأيقونة
            Icon(
              _getIconForNotification(notification.data.type),
              color: Theme.of(context).primaryColor,
              size: 28,
            ),
            const SizedBox(width: 16),
            // محتوى الإشعار
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.data.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    notification.data.message,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    // عرض الوقت بصيغة سهلة القراءة
                    timeago.format(notification.createdAt, locale: 'en_short'),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            // علامة "غير مقروء"
            if (isUnread)
              Container(
                margin: const EdgeInsets.only(left: 12, top: 4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}