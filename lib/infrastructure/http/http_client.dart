import 'dart:developer';

import 'package:dio/dio.dart';

/// Creates an HTTP client singleton.
class HttpClient {
  HttpClient._privateConstructor()
      : _dio = Dio()
          ..interceptors.add(InterceptorsWrapper(
            onError: (error, handler) {
              log(error.message.toString());
              handler.next(error);
            },
          ));

  static final HttpClient _instance = HttpClient._privateConstructor();
  static Dio get instance => _instance._dio;
  late final Dio _dio;
}
