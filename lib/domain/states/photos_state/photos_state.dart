import 'package:photos_app/domain/models/page_info/page_info.dart';
import 'package:photos_app/domain/models/photo.dart';
import 'package:photos_app/infrastructure/clients/picsum_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photos_state.g.dart';

@riverpod
class PhotosState extends _$PhotosState {
  final picsumClient = PicsumClient();

  @override
  Future<List<Photo>> build() async {
    return _fetch(const PageInfo());
  }

  Future<void> fetchMore(PageInfo nextPageInfo) async {
    final photos = await _fetch(nextPageInfo);
    state = AsyncValue.data([...state.value ?? [], ...photos]);
  }

  Future<List<Photo>> _fetch(PageInfo nextPageInfo) async {
    final photos = await picsumClient.fetch(nextPageInfo: nextPageInfo);
    return photos;
  }
}
