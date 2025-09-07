import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/features/notifcation/ui/widgets/notification_card.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../logic/notifications_cubit.dart';
import '../logic/notifications_state.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      appBar: AppBar(
        backgroundColor: ColorsManager.moreLightBlue,
        title: Text('Notifications',style:TextStyles.font16BlackBold.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: 20
        ),),
        centerTitle: true,
        leading: CustomBackButton(),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // TODO: Call Cubit methods based on value
              if (value == 'mark_all') {
                print('Mark all as read selected');
                context.read<NotificationsCubit>().markAllNotificationsAsRead();
              } else if (value == 'delete_all') {
                print('Delete all selected');
                context.read<NotificationsCubit>().deleteAllNotifications();
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'mark_all',
                child: Row(
                  children: [
                    Icon(Icons.done_all, color: Colors.black54),
                    SizedBox(width: 8),
                    Text('Mark all as read'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'delete_all',
                child: Row(
                  children: [
                    Icon(Icons.delete_sweep_outlined, color: Colors.black54),
                    SizedBox(width: 8),
                    Text('Delete All'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          switch (state) {
            case NotificationsLoading():
              return const Center(child: CircularProgressIndicator());

            case NotificationsError(error: final errorMsg):
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Failed to load notifications: $errorMsg',
                    textAlign: TextAlign.center,
                  ),
                ),
              );

            case NotificationsSuccess(notifications: final notifications, unreadCount: final unreadCount):
              if (notifications.isEmpty) {
                return const Center(
                  child: Text(
                    'You have no notifications yet.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                );
              }
              return ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return NotificationCard(
                    notification: notification,
                    onMarkAsRead: () {
                      // TODO: Implement Mark as Read logic
                      print('Marking ${notification.id} as read');
                      context.read<NotificationsCubit>().markNotificationAsRead(notification.id);
                    },
                    onDelete: () {
                      // TODO: Implement Delete logic
                      print('Deleting ${notification.id}');
                      context.read<NotificationsCubit>().deleteNotification(notification.id);
                    },
                  );
                },
              );
            case _:
              return const Center(child: Text('No notifications found.'));
          }
        },
      ),
    );
  }
}