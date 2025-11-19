import 'package:dio/dio.dart';

import '../options/client_options.dart';

class RestHttpClient {
  RestHttpClient(this.options, {Dio? dio})
    : _dio =
          dio ??
          Dio(
            BaseOptions(
              connectTimeout: options.timeout,
              receiveTimeout: options.timeout,
              sendTimeout: options.timeout,
              headers: Map<String, String>.from(options.defaultHeaders),
              responseType: ResponseType.json,
            ),
          ) {
    if (options.enableLogging) {
      _dio.interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true),
      );
    }
  }

  final ClientOptions options;
  final Dio _dio;
  Future<Response<T>> get<T>(
    Uri uri, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
  }) {
    final mergedHeaders = <String, String>{}
      ..addAll(options.defaultHeaders)
      ..addAll(headers ?? const {});
    return _dio.getUri(
      _attachQuery(uri, query),
      options: Options(headers: mergedHeaders.isEmpty ? null : mergedHeaders),
    );
  }

  Uri _attachQuery(Uri uri, Map<String, dynamic>? query) {
    if (query == null || query.isEmpty) {
      return uri;
    }
    final merged = Map<String, String>.from(uri.queryParameters)
      ..addAll(query.map((key, value) => MapEntry(key, '$value')));
    return uri.replace(queryParameters: merged);
  }
}
