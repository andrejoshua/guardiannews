// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) {
  return BaseResponse<T>(
    status: json['status'] as String,
    totalPages: json['pages'] as int,
    currentPage: json['currentPage'] as int,
    data: BaseResponse._dataFromJson(json['results']),
  );
}
