import 'dart:async';
import 'save_job_update_event.dart';

class SaveJobUpdateService {
  SaveJobUpdateService._privateConstructor();
  static final SaveJobUpdateService _instance = SaveJobUpdateService._privateConstructor();
  factory SaveJobUpdateService() => _instance;

  final _controller = StreamController<SaveJobUpdateEvent>.broadcast();
  Stream<SaveJobUpdateEvent> get stream => _controller.stream;

  void addEvent(SaveJobUpdateEvent event) {
    _controller.add(event);
  }

  void dispose() {
    _controller.close();
  }
}