import 'package:guardiannews/data/response/newsitem.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable(createToJson: false)
class NewsResponse {
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "pages")
  final int totalPages;
  @JsonKey(name: "currentPage")
  final int currentPage;
  @JsonKey(name: "results")
  final List<NewsItemResponse> data;

  NewsResponse({
    this.status,
    this.totalPages,
    this.currentPage,
    this.data,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
