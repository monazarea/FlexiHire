// lib/chat_service.dart

import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatService {
  late WebSocketChannel _channel;
  bool _isConnected = false;

  final _messageController = StreamController<String>.broadcast();
  // --- 1. أضف StreamController جديد للأخطاء ---
  final _errorController = StreamController<String>.broadcast();

  Stream<String> get messages => _messageController.stream;
  // --- 2. أضف Stream عام للوصول للأخطاء من الواجهة ---
  Stream<String> get errors => _errorController.stream;

  void connect() {
    try {
      final uri = Uri.parse('wss://7dc0ebd1a413.ngrok-free.app/ws/user_${DateTime.now().millisecondsSinceEpoch}');
      _channel = WebSocketChannel.connect(uri);
      _isConnected = true;

      _channel.stream.listen(
            (data) {
          final decoded = jsonDecode(data);
          final content = decoded['content'] as String;
          _messageController.add(content);
        },
        onDone: () {
          _isConnected = false;
          _errorController.add('Connection lost. Please restart the chat.');
        },
        onError: (error) {
          _isConnected = false;
          // --- 3. أرسل رسالة خطأ للواجهة بدلًا من طباعتها فقط ---
          _errorController.add('An error occurred. Please try again later.');
          print('WebSocket error: $error');
        },
      );
    } catch (e) {
      // --- 4. في حالة فشل الاتصال من البداية (السيرفر مغلق) ---
      _isConnected = false;
      _errorController.add('Could not connect to the server.');
      print('Error connecting to WebSocket: $e');
    }
  }

  void sendMessage(String text) {
    if (!_isConnected) {
      _errorController.add('You are not connected.');
      return;
    }

    try {
      final message = jsonEncode({'content': text.trim()});
      _channel.sink.add(message);
    } catch (e) {
      //  عندما يفشل الإرسال (بسبب انقطاع الاتصال مثلاً)
      _errorController.add('Failed to send message. Please try again.');
      print('Error sending message: $e');
    }
  }

  void disconnect() {
    if (_isConnected) {
      _channel.sink.close();
      _errorController.close(); // أغلق الـ stream controller عند عدم الحاجة إليه
      _messageController.close();
    }
  }
}