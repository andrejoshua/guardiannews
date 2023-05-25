// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse<T> _$$_BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_BaseResponse<T>(
      json['status'] as String,
      json['pages'] as int,
      json['currentPage'] as int,
      fromJsonT(json['results']),
    );
