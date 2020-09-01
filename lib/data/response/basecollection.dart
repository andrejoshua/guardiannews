import 'package:guardiannews/data/response/newsitem.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basecollection.g.dart';

@JsonSerializable(createToJson: false)
class BaseCollectionResponse<T> {
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "pages")
  final int totalPages;
  @JsonKey(name: "currentPage")
  final int currentPage;
  @JsonKey(name: "results", fromJson: _dataFromJson)
  final List<T> data;

  BaseCollectionResponse({
    this.status,
    this.totalPages,
    this.currentPage,
    this.data,
  });

  factory BaseCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseCollectionResponseFromJson(json);

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
