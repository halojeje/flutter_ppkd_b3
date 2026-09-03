import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_ppkd_b3/day_33/services/token_storage.dart';

Dio createDioClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://appabsensi.mobileprojp.com',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Accept': 'application/json'},
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // If Authorization header not explicitly passed, pull from secure storage
        if (!options.headers.containsKey('Authorization') ||
            options.headers['Authorization'] == null ||
            (options.headers['Authorization'] as String).isEmpty) {
          final token = await TokenStorage.getToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = token.startsWith('Bearer ')
                ? token
                : 'Bearer $token';
          }
        }
        log('[DioRequest] ${options.method} ${options.uri}');
        handler.next(options);
      },
    ),
  );

  dio.interceptors.add(
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (obj) => log(obj.toString(), name: 'DioClient'),
    ),
  );

  return dio;
}
