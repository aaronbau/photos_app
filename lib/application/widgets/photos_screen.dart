import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:photos_app/application/core/widgets/base_screen.dart';
import 'package:photos_app/domain/states/photos_state/photos_state.dart';

class PhotosScreen extends ConsumerWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photos = ref.watch(photosStateProvider);
    return BaseScreen(
      child: photos.when(
        data: (data) => GridView.count(
          crossAxisCount: 2,
          children: data
              .map(
                (e) => CachedNetworkImage(
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  imageUrl: e.url,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
        ),
        error: (error, stackTrace) => const Text("error"),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
