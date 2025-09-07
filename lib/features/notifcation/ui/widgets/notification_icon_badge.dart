// lib/features/notifications/ui/widgets/notification_icon_badge.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/notifications_cubit.dart';
import '../../logic/notifications_state.dart';

class NotificationIconBadge extends StatelessWidget {
  const NotificationIconBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state) {
        int unreadCount = 0;
        // نستخرج العدد فقط إذا كانت الحالة ناجحة
        if (state is NotificationsSuccess) {
          unreadCount = state.unreadCount;
        }

        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.notificationsScreen);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 1. الأيقونة الأساسية
                const Icon(Icons.notifications_outlined, color: Colors.black54, size: 28),

                // 2. شارة العدد (Badge)
                if (unreadCount > 0)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        '$unreadCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}