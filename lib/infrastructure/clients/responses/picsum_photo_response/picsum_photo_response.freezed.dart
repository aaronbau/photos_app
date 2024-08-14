// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picsum_photo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PicsumPhotoResponse _$PicsumPhotoResponseFromJson(Map<String, dynamic> json) {
  return _PicsumPhotoResponse.fromJson(json);
}

/// @nodoc
mixin _$PicsumPhotoResponse {
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  String get url =>
      throw _privateConstructorUsedError; // We have no control over the external API's naming convention.
// ignore: non_constant_identifier_names
  String get download_url => throw _privateConstructorUsedError;

  /// Serializes this PicsumPhotoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PicsumPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PicsumPhotoResponseCopyWith<PicsumPhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicsumPhotoResponseCopyWith<$Res> {
  factory $PicsumPhotoResponseCopyWith(
          PicsumPhotoResponse value, $Res Function(PicsumPhotoResponse) then) =
      _$PicsumPhotoResponseCopyWithImpl<$Res, PicsumPhotoResponse>;
  @useResult
  $Res call(
      {String id,
      String author,
      double width,
      double height,
      String url,
      String download_url});
}

/// @nodoc
class _$PicsumPhotoResponseCopyWithImpl<$Res, $Val extends PicsumPhotoResponse>
    implements $PicsumPhotoResponseCopyWith<$Res> {
  _$PicsumPhotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PicsumPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? download_url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      download_url: null == download_url
          ? _value.download_url
          : download_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PicsumPhotoResponseImplCopyWith<$Res>
    implements $PicsumPhotoResponseCopyWith<$Res> {
  factory _$$PicsumPhotoResponseImplCopyWith(_$PicsumPhotoResponseImpl value,
          $Res Function(_$PicsumPhotoResponseImpl) then) =
      __$$PicsumPhotoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String author,
      double width,
      double height,
      String url,
      String download_url});
}

/// @nodoc
class __$$PicsumPhotoResponseImplCopyWithImpl<$Res>
    extends _$PicsumPhotoResponseCopyWithImpl<$Res, _$PicsumPhotoResponseImpl>
    implements _$$PicsumPhotoResponseImplCopyWith<$Res> {
  __$$PicsumPhotoResponseImplCopyWithImpl(_$PicsumPhotoResponseImpl _value,
      $Res Function(_$PicsumPhotoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PicsumPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? download_url = null,
  }) {
    return _then(_$PicsumPhotoResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      download_url: null == download_url
          ? _value.download_url
          : download_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PicsumPhotoResponseImpl implements _PicsumPhotoResponse {
  const _$PicsumPhotoResponseImpl(
      {required this.id,
      required this.author,
      required this.width,
      required this.height,
      required this.url,
      required this.download_url});

  factory _$PicsumPhotoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PicsumPhotoResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String author;
  @override
  final double width;
  @override
  final double height;
  @override
  final String url;
// We have no control over the external API's naming convention.
// ignore: non_constant_identifier_names
  @override
  final String download_url;

  @override
  String toString() {
    return 'PicsumPhotoResponse(id: $id, author: $author, width: $width, height: $height, url: $url, download_url: $download_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PicsumPhotoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.download_url, download_url) ||
                other.download_url == download_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, author, width, height, url, download_url);

  /// Create a copy of PicsumPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PicsumPhotoResponseImplCopyWith<_$PicsumPhotoResponseImpl> get copyWith =>
      __$$PicsumPhotoResponseImplCopyWithImpl<_$PicsumPhotoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PicsumPhotoResponseImplToJson(
      this,
    );
  }
}

abstract class _PicsumPhotoResponse implements PicsumPhotoResponse {
  const factory _PicsumPhotoResponse(
      {required final String id,
      required final String author,
      required final double width,
      required final double height,
      required final String url,
      required final String download_url}) = _$PicsumPhotoResponseImpl;

  factory _PicsumPhotoResponse.fromJson(Map<String, dynamic> json) =
      _$PicsumPhotoResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get author;
  @override
  double get width;
  @override
  double get height;
  @override
  String
      get url; // We have no control over the external API's naming convention.
// ignore: non_constant_identifier_names
  @override
  String get download_url;

  /// Create a copy of PicsumPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PicsumPhotoResponseImplCopyWith<_$PicsumPhotoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
