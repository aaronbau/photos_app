import 'package:freezed_annotation/freezed_annotation.dart';

part 'picsum_photo_response.freezed.dart';
part 'picsum_photo_response.g.dart';

@freezed
class PicsumPhotoResponse with _$PicsumPhotoResponse {
  const factory PicsumPhotoResponse({
    required String id,
    required String author,
    required double width,
    required double height,
    required String url,
    // We have no control over the external API's naming convention.
    // ignore: non_constant_identifier_names
    required String download_url,
  }) = _PicsumPhotoResponse;

  factory PicsumPhotoResponse.fromJson(Map<String, Object?> json) => _$PicsumPhotoResponseFromJson(json);
}
