import 'package:flutter/material.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../profiles/company/ui/widgets/company_profile_screen_args.dart';
import '../../data/models/get_notification/notification_model.dart';

class NotificationNavigationHelper {
  static void handleNotificationTap(BuildContext context, NotificationModel notification) {
    // استخدم switch لتحديد وجهة الضغطة حسب نوع الإشعار
    switch (notification.data.type) {

    // --- إشعارات المستخدم ---
      case 'new_job_post':
        final companyData = notification.data.company;
        final jobData = notification.data.job;
        if (companyData != null && jobData != null) {
          context.pushNamed(
            Routes.companyProfileScreen,
            arguments: CompanyProfileScreenArgs(
              companyId: companyData.id.toString(),
              highlightJobId: jobData.id,
              initialTabIndex: 1, // "Jobs" tab هو الثاني، index = 1
            ),
          );
        }
        break;

      case 'job_status':
        final jobData = notification.data.job;
        if (jobData != null) {
          // ننتقل للشاشة الجديدة ونرسل ID الوظيفة للتمييز
          context.pushNamed(
            Routes.appliedJobsScreen,
            arguments: jobData.id,
          );
        }
        break;

    // --- إشعارات الشركة ---
      case 'new_application':
        final jobData = notification.data.job;
        if (jobData != null) {
          // أصبحنا نرسل الـ ID مباشرة بدون إنشاء أي كائنات جديدة
          context.pushNamed(Routes.jobApplicantsScreen, arguments: {'jobId': jobData.id, 'highlightNew': true},);
        }
        break;

      case 'new_review':
      // TODO: سيتم إضافة كود التوجيه هنا
        print('Navigating for new_review...');
        break;

      case 'chat_message':
      // TODO: سيتم إضافة كود التوجيه هنا
        print('Navigating for chat_message...');
        break;

      default:
      // في حالة وجود نوع غير معروف، لا تفعل شيئًا
        print('Unknown notification type: ${notification.data.type}');
    }
  }
}