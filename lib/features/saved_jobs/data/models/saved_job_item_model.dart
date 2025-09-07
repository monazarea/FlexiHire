import 'package:json_annotation/json_annotation.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart'; // إعادة استخدام JobModel

part 'saved_job_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SavedJobItemModel {
  final int id;
  @JsonKey(name: 'saved_at')
  final String savedAt;
  // كل عنصر يحتوي على كائن وظيفة كامل
  final JobModel job;

  SavedJobItemModel({
    required this.id,
    required this.savedAt,
    required this.job,
  });

  factory SavedJobItemModel.fromJson(Map<String, dynamic> json) =>
      _$SavedJobItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$SavedJobItemModelToJson(this);
}