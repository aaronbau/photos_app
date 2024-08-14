import 'package:flutter/material.dart';
import 'package:photos_app/infrastructure/clients/picsum_client.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final y = PicsumClient().fetch();
    y.then((value) => print(value.first.author));
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
