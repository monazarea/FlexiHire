import 'package:grad_comp/features/auth/login/data/models/user_skill_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../get_skills_and_jobs/data/models/job_title_model.dart';

part 'login_response_body.g.dart';


JobTitleModel? _jobFromJson(dynamic json) {
  if (json is Map<String, dynamic>) {
    return JobTitleModel.fromJson(json);
  }
  return null; // إذا كان نصًا فارغًا أو null، نرجع null
}

// دالة لتحويل حقل 'skills' بذكاء
List<String>? _skillsFromJson(List<dynamic>? json) {
  if (json == null || json.isEmpty) {
    return [];
  }
  // إذا كانت العناصر كائنات، نأخذ منها الاسم فقط
  if (json.first is Map<String, dynamic>) {
    return json
        .map((e) => UserSkillModel.fromJson(e as Map<String, dynamic>).name)
        .toList();
  }
  // إذا كانت نصوصًا بالفعل، نرجعها كما هي
  return json.map((e) => e.toString()).toList();
}



@JsonSerializable()
class LoginResponseBody {
  final UserModel user;
  final String token;
  @JsonKey(name: 'token_type')
  final String tokenType;

  LoginResponseBody({
    required this.user,
    required this.token,
    required this.tokenType,
  });

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);

  // Map<String, dynamic> toJson() => _$LoginResponseBodyToJson(this);
}

@JsonSerializable()
class UserModel {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'background_url')
  final String? backgroundUrl;
  @JsonKey(name: 'applied_jobs_count')
  final int? appliedJobsCount;
  final String? description;
  final String? location;
  final String? cv;
  final List<String> roles;
  final List<String>? permissions;
  @JsonKey(fromJson: _skillsFromJson)
  final List<String>? skills;

  @JsonKey(fromJson: _jobFromJson)
  final JobTitleModel? job;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.imageUrl,
    this.backgroundUrl,
    this.description,
    this.location,
    this.cv,
    required this.roles,
    this.permissions,
    this.skills,
    this.job,
    this.appliedJobsCount,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  // Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
