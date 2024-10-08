import 'package:photos_app/domain/models/page_info/page_info.dart';
import 'package:photos_app/domain/models/photo.dart';
import 'package:photos_app/environment.dart';
import 'package:photos_app/infrastructure/clients/responses/picsum_photo_response/picsum_photo_response.dart';
import 'package:photos_app/infrastructure/http/http_client.dart';

class PicsumClient {
  PicsumClient._privateConstructor();

  static final PicsumClient _instance = PicsumClient._privateConstructor();

  factory PicsumClient() {
    return _instance;
  }

  Future<List<Photo>> fetch({required PageInfo nextPageInfo}) async {
    final response = await HttpClient.instance //
        .get('${Environment.picsumApiUrl}?page=${nextPageInfo.nextPageToken}&limit=${nextPageInfo.size}');
    return (response.data as List<dynamic>) //
        .map((e) => PicsumPhotoResponse.fromJson(e))
        .map(
          (e) => Photo(
            id: e.id,
            author: e.author,
            url: e.download_url,
            width: e.width,
            height: e.height,
          ),
        )
        .toList();
  }
}
