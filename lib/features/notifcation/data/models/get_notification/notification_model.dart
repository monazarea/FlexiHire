import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  final String id;
  final String type;
  final NotificationData data;
  @JsonKey(name: 'read_at')
  final DateTime? readAt;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  NotificationModel({
    required this.id,
    required this.type,
    required this.data,
    this.readAt,
    required this.createdAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}

@JsonSerializable()
class NotificationData {
  final String title;
  final String message;
  final String type;

  // حقول اختيارية لتغطية كل أنواع الإشعارات
  final Job? job;
  final NotificationActor? company;
  final NotificationActor? user;
  final NotificationActor? sender;
  final String? status;
  final int? rating;
  @JsonKey(name: 'review_id')
  final int? reviewId;
  @JsonKey(name: 'proposal_preview')
  final String? proposalPreview;
  @JsonKey(name: 'message_preview')
  final String? messagePreview;

  NotificationData({
    required this.title,
    required this.message,
    required this.type,
    this.job,
    this.company,
    this.user,
    this.sender,
    this.status,
    this.rating,
    this.reviewId,
    this.proposalPreview,
    this.messagePreview,
  });

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDataToJson(this);
}

// يمثل أي شخص أو كيان في الإشعار (مستخدم، شركة، مرسل)
@JsonSerializable()
class NotificationActor {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String? email;
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  NotificationActor({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.email,
    this.imageUrl,
  });

  String get fullName => '$firstName $lastName';

  factory NotificationActor.fromJson(Map<String, dynamic> json) =>
      _$NotificationActorFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationActorToJson(this);
}

@JsonSerializable()
class Job {
  final int id;
  final String title;
  final String? location;
  final String? description;
  final List<String>? skills;

  Job({
    required this.id,
    required this.title,
    this.location,
    this.description,
    this.skills,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  Map<String, dynamic> toJson() => _$JobToJson(this);
}