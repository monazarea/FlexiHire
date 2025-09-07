import 'package:json_annotation/json_annotation.dart';

part 'pagination_data.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginationData<T> {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;
  final int total;
  final List<T> data;

  PaginationData({
    required this.currentPage,
    required this.lastPage,
    required this.total,
    required this.data,
  });

  factory PaginationData.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationDataFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$PaginationDataToJson(this, toJsonT);
}