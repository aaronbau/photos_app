import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:photos_app/application/core/widgets/base_screen.dart';
import 'package:photos_app/application/core/widgets/centered_loading.dart';
import 'package:photos_app/domain/models/page_info/page_info.dart';
import 'package:photos_app/domain/models/photo.dart';
import 'package:photos_app/domain/states/photos_state/photos_state.dart';

class PhotosScreen extends ConsumerStatefulWidget {
  const PhotosScreen({super.key});

  @override
  ConsumerState<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends ConsumerState<PhotosScreen> {
  late ScrollController _scrollController;
  late PageInfo pageInfo;
  bool isFetchingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScrollEnd);
    pageInfo = const PageInfo();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScrollEnd() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() => isFetchingMore = true);
      pageInfo = pageInfo.copyWith(nextPageToken: pageInfo.nextPageToken + 1);
      ref
          .read(photosStateProvider.notifier)
          .fetchMore(pageInfo)
          .then((value) => setState(() => isFetchingMore = false));
    }
  }

  @override
  Widget build(BuildContext context) {
    final photos = ref.watch(photosStateProvider);
    return BaseScreen(
      child: photos.when(
        data: (data) => RefreshIndicator(
          onRefresh: () async => ref.invalidate(photosStateProvider),
          child: ListView.builder(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: data.length + (isFetchingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < data.length) {
                return _ImageCard(photo: data[index]);
              } else {
                return const CenteredLoading();
              }
            },
          ),
        ),
        error: (error, stackTrace) => const Text("error"),
        loading: () => const CenteredLoading(),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Card(
        shape: const Border(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CachedNetworkImage(
              imageUrl: photo.url,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, progress) => LinearProgressIndicator(value: progress.progress),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(photo.author),
            )
          ],
        ),
      ),
    );
  }
}
