// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basecollection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseCollectionResponse<T> _$BaseCollectionResponseFromJson<T>(
    Map<String, dynamic> json) {
  return BaseCollectionResponse<T>(
    status: json['status'] as String,
    totalPages: json['pages'] as int,
    currentPage: json['currentPage'] as int,
    data: BaseCollectionResponse._dataFromJson(json['results']),
  );
}
