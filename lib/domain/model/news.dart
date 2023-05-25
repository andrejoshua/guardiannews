import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'news.freezed.dart';

@immutable
@freezed
class News with _$News {
  const factory News(
    String headline,
    String section,
    String url,
    DateTime publicationDate,
  ) = _News;

  const News._();

  String get publicationDateString =>
      new DateFormat.yMMMd().format(publicationDate);
}
