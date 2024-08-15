import 'package:go_router/go_router.dart';
import 'package:photos_app/application/widgets/photos_screen.dart';

enum PhotosAppRoute {
  photos,
}

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: PhotosAppRoute.photos.name,
    builder: (context, state) => const PhotosScreen(),
  )
]);
