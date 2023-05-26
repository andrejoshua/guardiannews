// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return _NewsResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsResponse {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sectionName")
  String get sectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "webPublicationDate")
  String get webPublicationDate => throw _privateConstructorUsedError;
  @JsonKey(name: "webTitle")
  String get webTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "webUrl")
  String get webUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsResponseCopyWith<NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseCopyWith<$Res> {
  factory $NewsResponseCopyWith(
          NewsResponse value, $Res Function(NewsResponse) then) =
      _$NewsResponseCopyWithImpl<$Res, NewsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "sectionName") String sectionName,
      @JsonKey(name: "webPublicationDate") String webPublicationDate,
      @JsonKey(name: "webTitle") String webTitle,
      @JsonKey(name: "webUrl") String webUrl});
}

/// @nodoc
class _$NewsResponseCopyWithImpl<$Res, $Val extends NewsResponse>
    implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionName = null,
    Object? webPublicationDate = null,
    Object? webTitle = null,
    Object? webUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      webPublicationDate: null == webPublicationDate
          ? _value.webPublicationDate
          : webPublicationDate // ignore: cast_nullable_to_non_nullable
              as String,
      webTitle: null == webTitle
          ? _value.webTitle
          : webTitle // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: null == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsResponseCopyWith<$Res>
    implements $NewsResponseCopyWith<$Res> {
  factory _$$_NewsResponseCopyWith(
          _$_NewsResponse value, $Res Function(_$_NewsResponse) then) =
      __$$_NewsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "sectionName") String sectionName,
      @JsonKey(name: "webPublicationDate") String webPublicationDate,
      @JsonKey(name: "webTitle") String webTitle,
      @JsonKey(name: "webUrl") String webUrl});
}

/// @nodoc
class __$$_NewsResponseCopyWithImpl<$Res>
    extends _$NewsResponseCopyWithImpl<$Res, _$_NewsResponse>
    implements _$$_NewsResponseCopyWith<$Res> {
  __$$_NewsResponseCopyWithImpl(
      _$_NewsResponse _value, $Res Function(_$_NewsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionName = null,
    Object? webPublicationDate = null,
    Object? webTitle = null,
    Object? webUrl = null,
  }) {
    return _then(_$_NewsResponse(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      null == webPublicationDate
          ? _value.webPublicationDate
          : webPublicationDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == webTitle
          ? _value.webTitle
          : webTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NewsResponse extends _NewsResponse {
  const _$_NewsResponse(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "sectionName") this.sectionName,
      @JsonKey(name: "webPublicationDate") this.webPublicationDate,
      @JsonKey(name: "webTitle") this.webTitle,
      @JsonKey(name: "webUrl") this.webUrl)
      : super._();

  factory _$_NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "sectionName")
  final String sectionName;
  @override
  @JsonKey(name: "webPublicationDate")
  final String webPublicationDate;
  @override
  @JsonKey(name: "webTitle")
  final String webTitle;
  @override
  @JsonKey(name: "webUrl")
  final String webUrl;

  @override
  String toString() {
    return 'NewsResponse(id: $id, sectionName: $sectionName, webPublicationDate: $webPublicationDate, webTitle: $webTitle, webUrl: $webUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.webPublicationDate, webPublicationDate) ||
                other.webPublicationDate == webPublicationDate) &&
            (identical(other.webTitle, webTitle) ||
                other.webTitle == webTitle) &&
            (identical(other.webUrl, webUrl) || other.webUrl == webUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sectionName, webPublicationDate, webTitle, webUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsResponseCopyWith<_$_NewsResponse> get copyWith =>
      __$$_NewsResponseCopyWithImpl<_$_NewsResponse>(this, _$identity);
}

abstract class _NewsResponse extends NewsResponse {
  const factory _NewsResponse(
      @JsonKey(name: "id") final String id,
      @JsonKey(name: "sectionName") final String sectionName,
      @JsonKey(name: "webPublicationDate") final String webPublicationDate,
      @JsonKey(name: "webTitle") final String webTitle,
      @JsonKey(name: "webUrl") final String webUrl) = _$_NewsResponse;
  const _NewsResponse._() : super._();

  factory _NewsResponse.fromJson(Map<String, dynamic> json) =
      _$_NewsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "sectionName")
  String get sectionName;
  @override
  @JsonKey(name: "webPublicationDate")
  String get webPublicationDate;
  @override
  @JsonKey(name: "webTitle")
  String get webTitle;
  @override
  @JsonKey(name: "webUrl")
  String get webUrl;
  @override
  @JsonKey(ignore: true)
  _$$_NewsResponseCopyWith<_$_NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
