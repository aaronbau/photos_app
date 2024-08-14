// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picsum_photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PicsumPhotoResponseImpl _$$PicsumPhotoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PicsumPhotoResponseImpl(
      id: json['id'] as String,
      author: json['author'] as String,
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      url: json['url'] as String,
      download_url: json['download_url'] as String,
    );

Map<String, dynamic> _$$PicsumPhotoResponseImplToJson(
        _$PicsumPhotoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'download_url': instance.download_url,
    };
