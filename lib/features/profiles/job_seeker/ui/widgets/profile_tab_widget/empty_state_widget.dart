// lib/core/widgets/empty_state_widget.dart

import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  final String message;
  const EmptyStateWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          message,
          style: const TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}