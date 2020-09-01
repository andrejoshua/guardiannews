import 'package:json_annotation/json_annotation.dart';

part 'newsitem.g.dart';

@JsonSerializable(createToJson: false)
class NewsItemResponse {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "sectionName")
  String sectionName;
  @JsonKey(name: "webPublicationDate")
  String webPublicationDate;
  @JsonKey(name: "webTitle")
  String webTitle;
  @JsonKey(name: "webUrl")
  String webUrl;

  NewsItemResponse({
    this.id,
    this.sectionName,
    this.webPublicationDate,
    this.webTitle,
    this.webUrl,
  });

  factory NewsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsItemResponseFromJson(json);
}
