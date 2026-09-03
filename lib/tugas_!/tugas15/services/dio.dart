import 'package:dio/dio.dart';

Dio createDioClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://ghibliapi.vercel.app', // <-- ini cuma domain
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  return dio;
}

// Cara pake:
Future<void> getFilms() async {
  final dio = createDioClient();
  final response = await dio.get('/films'); // <-- endpoint nya di sini
  print(response.data);
}
