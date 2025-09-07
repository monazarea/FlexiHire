// lib/core/widgets/content_not_found_widget.dart

import 'package:flutter/material.dart';

class ContentNotFoundWidget extends StatelessWidget {
  final String message;

  const ContentNotFoundWidget({
    super.key,
    this.message = 'Sorry, the content you are looking for may have been deleted or is no longer available.',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}