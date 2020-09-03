// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return NewsResponse(
    status: json['status'] as String,
    totalPages: json['pages'] as int,
    currentPage: json['currentPage'] as int,
    data: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : NewsItemResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
