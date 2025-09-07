import 'package:json_annotation/json_annotation.dart';
// نعيد استخدام موديل الباحث عن عمل الذي لدينا بالفعل
import 'package:grad_comp/features/job_seekers/data/models/job_seeker_list_item_model.dart';

part 'company_followers_response.g.dart';

// 1. الكلاس الرئيسي الذي يمثل الاستجابة كاملة
@JsonSerializable()
class CompanyFollowersResponse {
  final bool? status;
  final String? message;
  @JsonKey(name: 'data')
  final FollowersPaginationData? paginationData;

  CompanyFollowersResponse({this.status, this.message, this.paginationData});

  factory CompanyFollowersResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyFollowersResponseFromJson(json);
}

// 2. الكلاس الذي يمثل بيانات التصفح
@JsonSerializable()
class FollowersPaginationData {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  // هنا نستخدم اسم data للإشارة إلى قائمة المتابعين
  // ونعيد استخدام JobSeekerListItemModel
  @JsonKey(name: 'data')
  final List<JobSeekerListItemModel>? followers;

  @JsonKey(name: 'last_page')
  final int? lastPage;

  FollowersPaginationData({this.currentPage, this.followers, this.lastPage});

  factory FollowersPaginationData.fromJson(Map<String, dynamic> json) =>
      _$FollowersPaginationDataFromJson(json);
}