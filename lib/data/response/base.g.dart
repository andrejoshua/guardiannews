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
      Response<T>.fromJson(json['response'] as Map<String, dynamic>,
          (value) => fromJsonT(value)),
    );

_$_Response<T> _$$_ResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_Response<T>(
      json['status'] as String,
      json['pages'] as int,
      json['currentPage'] as int,
      fromJsonT(json['results']),
    );
