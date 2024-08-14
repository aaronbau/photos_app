import 'package:photos_app/domain/models/photo.dart';
import 'package:photos_app/infrastructure/clients/picsum_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photos_state.g.dart';

@riverpod
class PhotosState extends _$PhotosState {
  final picsumClient = PicsumClient();

  @override
  Future<List<Photo>> build() async {
    return picsumClient.fetch();
  }
}
