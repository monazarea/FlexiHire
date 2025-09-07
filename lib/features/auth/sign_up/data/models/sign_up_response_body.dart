// lib/features/auth/sign_up/data/models/sign_up_response_body.dart

import 'package:json_annotation/json_annotation.dart';
// ١. سنقوم باستيراد موديل المستخدم من ملف تسجيل الدخول
import 'package:grad_comp/features/auth/login/data/models/login_response_body.dart';

part 'sign_up_response_body.g.dart';

@JsonSerializable()
class SignUpResponseBody {
  final bool status;
  final String message;
  final String token;
  // ٢. أصبحنا نستخدم UserModel هنا بدلًا من User
  final UserModel user;

  SignUpResponseBody({
    required this.status,
    required this.message,
    required this.token,
    required this.user,
  });

  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);
}

// ٣. سنقوم بحذف كلاس User القديم بالكامل من هذا الملف