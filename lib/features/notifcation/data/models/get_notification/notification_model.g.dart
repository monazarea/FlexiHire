// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: json['id'] as String,
      type: json['type'] as String,
      data: NotificationData.fromJson(json['data'] as Map<String, dynamic>),
      readAt: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'data': instance.data,
      'read_at': instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    NotificationData(
      title: json['title'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
      job: json['job'] == null
          ? null
          : Job.fromJson(json['job'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : NotificationActor.fromJson(json['company'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : NotificationActor.fromJson(json['user'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : NotificationActor.fromJson(json['sender'] as Map<String, dynamic>),
      status: json['status'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      reviewId: (json['review_id'] as num?)?.toInt(),
      proposalPreview: json['proposal_preview'] as String?,
      messagePreview: json['message_preview'] as String?,
    );

Map<String, dynamic> _$NotificationDataToJson(NotificationData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'type': instance.type,
      'job': instance.job,
      'company': instance.company,
      'user': instance.user,
      'sender': instance.sender,
      'status': instance.status,
      'rating': instance.rating,
      'review_id': instance.reviewId,
      'proposal_preview': instance.proposalPreview,
      'message_preview': instance.messagePreview,
    };

NotificationActor _$NotificationActorFromJson(Map<String, dynamic> json) =>
    NotificationActor(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$NotificationActorToJson(NotificationActor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image_url': instance.imageUrl,
    };

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      location: json['location'] as String?,
      description: json['description'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'description': instance.description,
      'skills': instance.skills,
    };
