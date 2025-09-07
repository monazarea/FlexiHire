// // lib/chat_screen.dart
//
// import 'package:flutter/material.dart';
// import '../../core/theming/colors.dart';
// import '../../core/theming/styles.dart';
// import '../../core/widgets/custom_back_button.dart';
// import 'chat_service.dart';
// import 'widgets/chat_input_bar.dart';
// import 'widgets/message_bubble.dart';
//
// // Class لتخزين بيانات الرسالة
// class Message {
//   final String text;
//   final bool isMe;
//   Message(this.text, this.isMe);
// }
//
// class ChatScreen extends StatefulWidget {
//   // --- 1. تمت إضافة متغير جديد لاستقبال رابط الصورة ---
//   final String? userImageUrl;
//
//   // --- 2. تم تحديث الـ constructor ---
//   const ChatScreen({
//     super.key,
//     this.userImageUrl, // استقبال الرابط هنا
//   });
//
//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   final ChatService _chatService = ChatService();
//   final List<Message> _messages = [];
//   final ScrollController _scrollController = ScrollController();
//
//   // رابط ثابت لصورة البوت
//   final String _botImageAssetPath = "assets/images/chatBot.png";
//   bool _isBotTyping = false;
//
//   @override
//   void initState() {
//     super.initState();
//     // --- 3. تم حذف دالة تحميل الصورة من هنا ---
//     _chatService.connect();
//     _addMessage(Message('Hello! How can I help you today?', false));
//     _chatService.messages.listen((text) {
//       setState(() => _isBotTyping = false);
//       _addMessage(Message(text, false));
//     });
//   }
//
//   void _addMessage(Message message) {
//     setState(() => _messages.add(message));
//     _scrollToBottom();
//   }
//
//   void _handleSendMessage(String text) {
//     _addMessage(Message(text, true));
//     _chatService.sendMessage(text);
//     setState(() => _isBotTyping = true);
//   }
//
//   void _scrollToBottom() {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (_scrollController.hasClients) {
//         _scrollController.animateTo(
//           _scrollController.position.maxScrollExtent,
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeOut,
//         );
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _chatService.disconnect();
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorsManager.moreLightBlue,
//       appBar: AppBar(
//         leading: const CustomBackButton(),
//         backgroundColor: ColorsManager.moreLightBlue,
//         title: Text('AI Chat Assistant',
//           style: TextStyles.font16BlackBold.copyWith(
//               color: Colors.grey.shade800,
//               fontWeight: FontWeight.w500,
//               fontSize: 22),
//         ),
//         centerTitle: true,
//       ),
//
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               controller: _scrollController,
//               padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
//               itemCount: _messages.length + (_isBotTyping ? 1 : 0),
//               itemBuilder: (context, index) {
//                 if (_isBotTyping && index == _messages.length) {
//                   return const BubbleSpecialThree(
//                     text: 'Typing...',
//                     color: Color(0xFFE8E8EE), // لون فقاعة البوت
//                     tail: false,
//                     isSender: false,
//                     textStyle: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 14
//                     ),
//                   );
//                 }
//                 final message = _messages[index];
//                 return MessageBubble(
//                   text: message.text,
//                   isMe: message.isMe,
//                   // --- 4. استخدام الصورة المستقبلة من الـ widget ---
//                   imageUrl: message.isMe ? widget.userImageUrl : null,
//                   imageAssetPath: message.isMe ? null : _botImageAssetPath,
//                 );
//               },
//             ),
//           ),
//           ChatInputBar(onSendMessage: _handleSendMessage),
//         ],
//       ),
//     );
//   }
// }

// lib/chat_screen.dart

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart'; // استيراد باكيدج الأنيميشن
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/custom_back_button.dart';
import 'chat_service.dart';
import 'widgets/chat_input_bar.dart';
import 'widgets/message_bubble.dart';

class Message {
  final String text;
  final bool isMe;
  Message(this.text, this.isMe);
}

class ChatScreen extends StatefulWidget {
  final String? userImageUrl;
  const ChatScreen({super.key, this.userImageUrl});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatService _chatService = ChatService();
  final List<Message> _messages = [];
  final ScrollController _scrollController = ScrollController();
  final String _botImageAssetPath = "assets/images/chat.png";
  bool _isBotTyping = false;

  @override
  void initState() {
    super.initState();
    _chatService.connect();
    _addMessage(Message('Hello! How can I help you today?', false));
    _chatService.messages.listen((text) {
      setState(() => _isBotTyping = false);
      _addMessage(Message(text, false));
    });
    _chatService.errors.listen((errorMessage) {
      // التأكد من أن الـ widget مازال موجودًا
      if (mounted) {
        // 1. إيقاف الأنيميشن فورًا
        setState(() {
          _isBotTyping = false;
        });

        // 2. عرض رسالة الخطأ
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Colors.red,
          ),
        );
      }
    });
  }

  void _addMessage(Message message) {
    setState(() => _messages.add(message));
    _scrollToBottom();
  }

  void _handleSendMessage(String text) {
    _addMessage(Message(text, true));
    _chatService.sendMessage(text);
    setState(() => _isBotTyping = true);
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _chatService.disconnect();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      appBar: AppBar(
        leading: const CustomBackButton(),
        backgroundColor: ColorsManager.moreLightBlue,
        title: Text('AI Chat Assistant',
          style: TextStyles.font16BlackBold.copyWith(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
              fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
              itemCount: _messages.length + (_isBotTyping ? 1 : 0),
              itemBuilder: (context, index) {
                // ## التعديل الرئيسي هنا ##
                if (_isBotTyping && index == _messages.length) {
                  // استخدام MessageBubble لعرض الأنيميشن
                  return MessageBubble(
                    isMe: false,
                    imageAssetPath: _botImageAssetPath,
                    // تمرير ويدجت الأنيميشن كـ child
                    child: LoadingAnimationWidget.staggeredDotsWave(
                      color: ColorsManager.primary,
                      size: 32,
                    ),
                  );
                }

                final message = _messages[index];
                return MessageBubble(
                  text: message.text,
                  isMe: message.isMe,
                  imageUrl: message.isMe ? widget.userImageUrl : null,
                  imageAssetPath: message.isMe ? null : _botImageAssetPath,
                );
              },
            ),
          ),
          ChatInputBar(onSendMessage: _handleSendMessage),
        ],
      ),
    );
  }
}