// lib/features/profiles/widgets/profile_action_menu.dart

import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/profiles/widgets/profile_menu_handler.dart';

class ProfileActionMenu extends StatelessWidget {
  final bool isOwner;
  final String? backgroundImage;
  final String? profileImage;
  final String userId;

  const ProfileActionMenu({
    super.key,
    required this.isOwner,
    required this.userId,
    this.backgroundImage,
    this.profileImage
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: PopupMenuButton<String>(
        onSelected: (value) =>
            ProfileMenuHandler.handleSelection(value, context),
        icon: const Icon(Icons.more_horiz, color: ColorsManager.dark),
        itemBuilder: (BuildContext context) {
          if (isOwner) {
            return [
              const PopupMenuItem<String>(
                value: 'edit_profile',
                child: Text('Edit Profile'),
              ),
            ];
          } else {
            return [
              const PopupMenuItem<String>(
                value: 'report',
                child: Text('Report User'),
              ),
            ];
          }
        },
      ),
    );
  }
}