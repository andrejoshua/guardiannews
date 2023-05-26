import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';

part 'news.g.dart';

@immutable
@Freezed(
  toJson: false
)
class NewsResponse with _$NewsResponse {
  const factory NewsResponse(
    @JsonKey(name: "id") String id,
    @JsonKey(name: "sectionName") String sectionName,
    @JsonKey(name: "webPublicationDate") String webPublicationDate,
    @JsonKey(name: "webTitle") String webTitle,
    @JsonKey(name: "webUrl") String webUrl,
  ) = _NewsResponse;

  const NewsResponse._();

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}
