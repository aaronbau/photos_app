import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photos_app/domain/models/photo.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Card(
        shape: const Border(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CachedNetworkImage(
                imageUrl: photo.url,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, progress) => LinearProgressIndicator(value: progress.progress),
              ),
              const SizedBox(height: 8),
              Text(
                photo.author,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(photo.url)
            ],
          ),
        ),
      ),
    );
  }
}
