import 'package:guardiannews/data/response/newsitem.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable(createToJson: false)
class BaseResponse<T> {
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "pages")
  final int totalPages;
  @JsonKey(name: "currentPage")
  final int currentPage;
  @JsonKey(name: "results", fromJson: _dataFromJson)
  final T data;

  BaseResponse({
    this.status,
    this.totalPages,
    this.currentPage,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  /// Decodes [json] by "inspecting" its contents.
  static T _dataFromJson<T>(Object json) {
    if (json is Map<String, dynamic>) {
      // TODO cari tahu
      if (T is NewsItemResponse) {
        return NewsItemResponse.fromJson(json) as T;
      }
    }

    throw ArgumentError.value(
      json,
      'json',
      'Cannot convert the provided data.',
    );
  }
}
