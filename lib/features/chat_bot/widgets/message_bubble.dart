// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// // 1. استيراد الويدجت المخصص للصورة
// import '../../../core/widgets/custom_network_image.dart';
//
// class MessageBubble extends StatelessWidget {
//   final String text;
//   final bool isMe;
//   final String? imageUrl;
//   final String? imageAssetPath;
//
//   const MessageBubble({
//     super.key,
//     required this.text,
//     required this.isMe,
//     this.imageUrl,
//     this.imageAssetPath,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     // 2. استخدام الويدجت المخصص بدلاً من CircleAvatar
//     final avatar = CustomNetworkImage(
//       imageUrl: imageUrl,
//       fallbackImagePath: imageAssetPath,
//       width: 40,
//       height: 40,
//       borderRadius: 50, // لجعل الصورة دائرية تمامًا
//       fallbackIcon: isMe ? Icons.person_outline : Icons.smart_toy_outlined,
//     );
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Row(
//         mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           // إذا كانت الرسالة من البوت، اعرض الصورة أولاً
//           if (!isMe) ...[
//             avatar,
//             const SizedBox(width: 8),
//           ],
//
//           // فقاعة الرسالة (بدون تغيير)
//           Container(
//             constraints: BoxConstraints(
//               maxWidth: MediaQuery.of(context).size.width * 0.65,
//             ),
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//             decoration: BoxDecoration(
//               color: isMe ? Theme.of(context).colorScheme.primary : const Color(0xFFE8E8EE),
//               borderRadius: BorderRadius.only(
//                 topLeft: const Radius.circular(16),
//                 topRight: const Radius.circular(16),
//                 bottomLeft: isMe ? const Radius.circular(16) : const Radius.circular(0),
//                 bottomRight: isMe ? const Radius.circular(0) : const Radius.circular(16),
//               ),
//             ),
//             child: Text(
//               text,
//               style: TextStyle(
//                 color: isMe ? Colors.white : Colors.black87,
//                 fontSize: 15,
//               ),
//             ),
//           ),
//
//           // إذا كانت الرسالة منك، اعرض الصورة أخيرًا
//           if (isMe) ...[
//             const SizedBox(width: 8),
//             avatar,
//           ],
//         ],
//       ),
//     );
//   }
// }

// lib/widgets/message_bubble.dart

import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';
import '../../../core/widgets/custom_network_image.dart';

class MessageBubble extends StatelessWidget {
  final String? text; // سيصبح اختياريًا
  final Widget? child; // سيستقبل الأنيميشن
  final bool isMe;
  final String? imageUrl;
  final String? imageAssetPath;

  const MessageBubble({
    super.key,
    this.text,
    this.child,
    required this.isMe,
    this.imageUrl,
    this.imageAssetPath,
  }) : assert(text != null || child != null); // للتأكد من وجود نص أو ويدجت

  @override
  Widget build(BuildContext context) {
    final avatar = CustomNetworkImage(
      imageUrl: imageUrl,
      fallbackImagePath: imageAssetPath,
      width: 40,
      height: 40,
      borderRadius: 50,
      fallbackIcon: isMe ? Icons.person_outline : Icons.smart_toy_outlined,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMe) ...[avatar, const SizedBox(width: 8)],

          Flexible(
            child: Container(
              // ---  التعديل الرئيسي هنا ---
              constraints: BoxConstraints(
                // تحديد عرض أقصى للرسالة بنسبة 75% من عرض الشاشة
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                color: isMe ? ColorsManager.primary.withOpacity(0.8) : const Color(0xFFE8E8EE),
                borderRadius: BorderRadius.circular(16),
              ),
              child: child ?? Text(
                text!,
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),

          if (isMe) ...[const SizedBox(width: 8), avatar],
        ],
      ),
    );
  }
}