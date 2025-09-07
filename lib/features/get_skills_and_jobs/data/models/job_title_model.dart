// in models/job_title_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_title_model.freezed.dart';
part 'job_title_model.g.dart';

@freezed
abstract class JobTitleModel with _$JobTitleModel {
  const factory JobTitleModel({
    required int id,
    required String name,
  }) = _JobTitleModel;

  factory JobTitleModel.fromJson(Map<String, dynamic> json) =>
      _$JobTitleModelFromJson(json);
}