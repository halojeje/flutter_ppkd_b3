import 'dart:developer';

import 'package:dio/dio.dart';

import 'token_storage.dart';

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
        try {
          // Logika pengecekan token seperti kode kedua (mencegah overwrite & pengecekan prefiks Bearer)
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
        } catch (e) {
          log("Dio onRequest token error: $e");
        }

        options.headers['Accept'] = 'application/json';

        // Menggunakan uri seperti kode kedua agar URL terformat rapi, tetapi label log tetap "[Dio Request]"
        log("Dio Request: [${options.method}] ${options.uri}");
        handler.next(options);
      },
      onError: (DioException e, handler) {
        // Tetap mempertahankan onError handler bawaan kode pertama
        log("Dio Error: ${e.response?.statusCode} -> ${e.response?.data}");
        handler.next(e);
      },
    ),
  );

  dio.interceptors.add(
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (obj) => log(obj.toString()),
    ),
  );

  return dio;
}
