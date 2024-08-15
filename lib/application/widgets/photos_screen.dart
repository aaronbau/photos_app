import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:photos_app/application/core/widgets/base_screen.dart';
import 'package:photos_app/application/core/widgets/centered_loading.dart';
import 'package:photos_app/application/widgets/filter_bottom_sheet.dart';
import 'package:photos_app/application/widgets/image_card.dart';
import 'package:photos_app/domain/models/page_info/page_info.dart';
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
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => FilterBottomSheet(
                intialPageSize: pageInfo.size,
                onApply: (pageSize) => setState(() => pageInfo = pageInfo.copyWith(size: pageSize)),
              ),
            );
          },
          icon: const Icon(Icons.filter_alt),
        )
      ],
      child: photos.when(
        data: (data) => RefreshIndicator(
          onRefresh: () async => ref.invalidate(photosStateProvider),
          child: ListView.builder(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: data.length + (isFetchingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < data.length) {
                return ImageCard(photo: data[index]);
              } else {
                return const CenteredLoading();
              }
            },
          ),
        ),
        error: (error, stackTrace) => const Text("Error"),
        loading: () => const CenteredLoading(),
      ),
    );
  }
}
