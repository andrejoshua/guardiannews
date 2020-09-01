import 'package:intl/intl.dart';

class News {
  final String headline;
  final String section;
  final String url;
  final DateTime publicationDate;

  News(this.headline, this.section, this.url, this.publicationDate);

  String get publicationDateString =>
      new DateFormat.yMMMd().format(publicationDate);
}
