// lib/widgets/chat_input_bar.dart

import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';

class ChatInputBar extends StatefulWidget {
  final Function(String) onSendMessage;

  const ChatInputBar({super.key, required this.onSendMessage});

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  final _controller = TextEditingController();

  void _submitMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      widget.onSendMessage(text);
      _controller.clear();
      FocusScope.of(context).unfocus(); // لإخفاء الكيبورد بعد الإرسال
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 2,
            color: Colors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: 'Type a message...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.grey[100],
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                onSubmitted: (_) => _submitMessage(),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(Icons.send, color: ColorsManager.primary.withOpacity(0.8),size: 30,),
              onPressed: _submitMessage,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}