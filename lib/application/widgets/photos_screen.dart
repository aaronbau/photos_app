import 'package:flutter/material.dart';
import 'package:photos_app/application/core/widgets/base_screen.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      child: Text("photos"),
    );
  }
}
