import 'package:flutter/material.dart';

class HomeActionMenu extends StatelessWidget {
  final Function(String) onSelected;

  const HomeActionMenu({
    super.key,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: onSelected,
      // --- تم التعديل هنا ---
      icon: const Icon(Icons.menu, color: Colors.black54, size: 30), // غيرنا الأيقونة
      // ----------------------
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'change_password',
          child: Text('Change Password'),
        ),
        const PopupMenuItem<String>(
          value: 'about_us',
          child: Text('About Us'),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<String>(
          value: 'logout',
          child: Text('Logout'),
        ),
      ],
    );
  }
}