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
    @JsonKey(name: "status") String status,
    @JsonKey(name: "pages") int totalPages,
    @JsonKey(name: "currentPage") int currentPage,
    @JsonKey(name: "results") T data,
  ) = _BaseResponse;

  const BaseResponse._();

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson<T>(json, fromJsonT);
}
