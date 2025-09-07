import 'dart:async';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';

// هذه هي خدمة البث المركزي (Singleton)
class ReviewUpdateService {
  // Private constructor
  ReviewUpdateService._privateConstructor();

  // The single instance
  static final ReviewUpdateService _instance = ReviewUpdateService._privateConstructor();

  // Factory constructor to return the single instance
  factory ReviewUpdateService() {
    return _instance;
  }

  // StreamController to broadcast events
  final _controller = StreamController<ReviewModel>.broadcast();

  // Stream for widgets to listen to
  Stream<ReviewModel> get stream => _controller.stream;

  // Method to add an event to the stream
  void newReviewAdded(ReviewModel review) {
    _controller.add(review);
  }

  // Close the stream when it's no longer needed
  void dispose() {
    _controller.close();
  }
}