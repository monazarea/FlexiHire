// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_follow_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToggleFollowResponse _$ToggleFollowResponseFromJson(
        Map<String, dynamic> json) =>
    ToggleFollowResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      isFollowing: json['is_following'] as bool?,
    );

Map<String, dynamic> _$ToggleFollowResponseToJson(
        ToggleFollowResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'is_following': instance.isFollowing,
    };
