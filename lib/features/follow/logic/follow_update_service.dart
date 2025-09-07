import 'dart:async';

// كلاس بسيط ليمثل "حدث" التحديث
class FollowUpdateEvent {
  final int companyId;
  final bool isNowFollowing;

  FollowUpdateEvent({required this.companyId, required this.isNowFollowing});
}

// هذه هي خدمة البث المركزي (Singleton)
class FollowUpdateService {
  // Private constructor
  FollowUpdateService._privateConstructor();

  // The single instance
  static final FollowUpdateService _instance = FollowUpdateService._privateConstructor();

  // Factory constructor to return the single instance
  factory FollowUpdateService() {
    return _instance;
  }

  // StreamController to broadcast events
  final _controller = StreamController<FollowUpdateEvent>.broadcast();

  // Stream for widgets to listen to
  Stream<FollowUpdateEvent> get stream => _controller.stream;

  // Method to add an event to the stream
  void addEvent(FollowUpdateEvent event) {
    _controller.add(event);
  }

  // Close the stream when it's no longer needed
  void dispose() {
    _controller.close();
  }
}