// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponse<T> _$BaseResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponse<T> {
  @JsonKey(name: "response")
  Response<T> get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseResponseCopyWith<T, BaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<T, $Res> {
  factory $BaseResponseCopyWith(
          BaseResponse<T> value, $Res Function(BaseResponse<T>) then) =
      _$BaseResponseCopyWithImpl<T, $Res, BaseResponse<T>>;
  @useResult
  $Res call({@JsonKey(name: "response") Response<T> response});

  $ResponseCopyWith<T, $Res> get response;
}

/// @nodoc
class _$BaseResponseCopyWithImpl<T, $Res, $Val extends BaseResponse<T>>
    implements $BaseResponseCopyWith<T, $Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<T>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<T, $Res> get response {
    return $ResponseCopyWith<T, $Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BaseResponseCopyWith<T, $Res>
    implements $BaseResponseCopyWith<T, $Res> {
  factory _$$_BaseResponseCopyWith(
          _$_BaseResponse<T> value, $Res Function(_$_BaseResponse<T>) then) =
      __$$_BaseResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "response") Response<T> response});

  @override
  $ResponseCopyWith<T, $Res> get response;
}

/// @nodoc
class __$$_BaseResponseCopyWithImpl<T, $Res>
    extends _$BaseResponseCopyWithImpl<T, $Res, _$_BaseResponse<T>>
    implements _$$_BaseResponseCopyWith<T, $Res> {
  __$$_BaseResponseCopyWithImpl(
      _$_BaseResponse<T> _value, $Res Function(_$_BaseResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_BaseResponse<T>(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class _$_BaseResponse<T> extends _BaseResponse<T> {
  const _$_BaseResponse(@JsonKey(name: "response") this.response) : super._();

  factory _$_BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_BaseResponseFromJson(json, fromJsonT);

  @override
  @JsonKey(name: "response")
  final Response<T> response;

  @override
  String toString() {
    return 'BaseResponse<$T>(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResponse<T> &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseResponseCopyWith<T, _$_BaseResponse<T>> get copyWith =>
      __$$_BaseResponseCopyWithImpl<T, _$_BaseResponse<T>>(this, _$identity);
}

abstract class _BaseResponse<T> extends BaseResponse<T> {
  const factory _BaseResponse(
          @JsonKey(name: "response") final Response<T> response) =
      _$_BaseResponse<T>;
  const _BaseResponse._() : super._();

  factory _BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_BaseResponse<T>.fromJson;

  @override
  @JsonKey(name: "response")
  Response<T> get response;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResponseCopyWith<T, _$_BaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Response<T> _$ResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _Response<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$Response<T> {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "currentPage")
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  T get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseCopyWith<T, Response<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<T, $Res> {
  factory $ResponseCopyWith(
          Response<T> value, $Res Function(Response<T>) then) =
      _$ResponseCopyWithImpl<T, $Res, Response<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "pages") int totalPages,
      @JsonKey(name: "currentPage") int currentPage,
      @JsonKey(name: "results") T results});
}

/// @nodoc
class _$ResponseCopyWithImpl<T, $Res, $Val extends Response<T>>
    implements $ResponseCopyWith<T, $Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<T, $Res>
    implements $ResponseCopyWith<T, $Res> {
  factory _$$_ResponseCopyWith(
          _$_Response<T> value, $Res Function(_$_Response<T>) then) =
      __$$_ResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "pages") int totalPages,
      @JsonKey(name: "currentPage") int currentPage,
      @JsonKey(name: "results") T results});
}

/// @nodoc
class __$$_ResponseCopyWithImpl<T, $Res>
    extends _$ResponseCopyWithImpl<T, $Res, _$_Response<T>>
    implements _$$_ResponseCopyWith<T, $Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response<T> _value, $Res Function(_$_Response<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? results = freezed,
  }) {
    return _then(_$_Response<T>(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class _$_Response<T> extends _Response<T> {
  const _$_Response(
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "pages") this.totalPages,
      @JsonKey(name: "currentPage") this.currentPage,
      @JsonKey(name: "results") this.results)
      : super._();

  factory _$_Response.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ResponseFromJson(json, fromJsonT);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "pages")
  final int totalPages;
  @override
  @JsonKey(name: "currentPage")
  final int currentPage;
  @override
  @JsonKey(name: "results")
  final T results;

  @override
  String toString() {
    return 'Response<$T>(status: $status, totalPages: $totalPages, currentPage: $currentPage, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalPages, currentPage,
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCopyWith<T, _$_Response<T>> get copyWith =>
      __$$_ResponseCopyWithImpl<T, _$_Response<T>>(this, _$identity);
}

abstract class _Response<T> extends Response<T> {
  const factory _Response(
      @JsonKey(name: "status") final String status,
      @JsonKey(name: "pages") final int totalPages,
      @JsonKey(name: "currentPage") final int currentPage,
      @JsonKey(name: "results") final T results) = _$_Response<T>;
  const _Response._() : super._();

  factory _Response.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_Response<T>.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "pages")
  int get totalPages;
  @override
  @JsonKey(name: "currentPage")
  int get currentPage;
  @override
  @JsonKey(name: "results")
  T get results;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<T, _$_Response<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
