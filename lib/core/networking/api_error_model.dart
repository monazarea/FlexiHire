// import 'package:grad_comp/core/helpers/extensions.dart';
// import 'package:json_annotation/json_annotation.dart';
// part 'api_error_model.g.dart';
//
// @JsonSerializable()
// class ApiErrorModel {
//   final String? message;
//   final bool? status;
//   final Map<String, List<String>>? errors;
//
//   ApiErrorModel({
//     required this.message,
//     this.status,
//     this.errors
//   });
//
//   factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
//       _$ApiErrorModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
//
//   /// Returns a String containing all the error messages
//   String getAllErrorMesseges(){
//     if(errors.isNullOrEmpty())return message??" Unknown Error occurred";
//     return errors!.entries.map((entry){
//       final value = entry.value;
//       return "${value.join(',')}";
//     }).join('\n');
//   }
// }


import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final bool? status;
  final Map<String, List<String>>? errors;

  // --- 1. تم إضافة هذا الحقل الجديد ---
  // هذا الحقل لن نقرأه من الـ JSON، بل سنقوم بتعيينه يدوياً
  @JsonKey(includeFromJson: false, includeToJson: false)
  final int? code;

  ApiErrorModel({
    required this.message,
    this.status,
    this.errors,
    this.code, // --- 2. إضافته للـ constructor ---
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMesseges(){
    if(errors.isNullOrEmpty())return message??" Unknown Error occurred";
    return errors!.entries.map((entry){
      final value = entry.value;
      return "${value.join(',')}";
    }).join('\n');
  }
}