import 'package:freezed_annotation/freezed_annotation.dart';

part 'base.freezed.dart';

part 'base.g.dart';

@immutable
@Freezed(
  toJson: false,
  genericArgumentFactories: true,
)
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse(
    @JsonKey(name: "response") Response<T> response,
  ) = _BaseResponse;

  const BaseResponse._();

  T get data => response.results;

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson<T>(json, fromJsonT);
}

@immutable
@Freezed(
  toJson: false,
  genericArgumentFactories: true,
)
class Response<T> with _$Response<T> {
  const factory Response(
    @JsonKey(name: "status") String status,
    @JsonKey(name: "pages") int totalPages,
    @JsonKey(name: "currentPage") int currentPage,
    @JsonKey(name: "results") T results,
  ) = _Response;

  const Response._();

  factory Response.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseFromJson<T>(json, fromJsonT);
}
