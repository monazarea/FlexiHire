import 'dart:async';

// كلاس بسيط ليمثل "حدث" تحديث الوظيفة
class JobUpdateEvent {
  final int jobId;
  // يمكننا إضافة أنواع أخرى مستقبلاً مثل 'updated' أو 'created'
  final String eventType;

  JobUpdateEvent({required this.jobId, required this.eventType});
}

// هذه هي خدمة البث المركزي (Singleton)
class JobUpdateService {
  JobUpdateService._privateConstructor();
  static final JobUpdateService _instance = JobUpdateService._privateConstructor();
  factory JobUpdateService() {
    return _instance;
  }

  final _controller = StreamController<JobUpdateEvent>.broadcast();
  Stream<JobUpdateEvent> get stream => _controller.stream;

  void jobDeleted(int jobId) {
    _controller.add(JobUpdateEvent(jobId: jobId, eventType: 'deleted'));
  }

  void dispose() {
    _controller.close();
  }
}