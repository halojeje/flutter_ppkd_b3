import 'package:dio/dio.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas15_API/model/movie_model.dart';
import 'package:retrofit/retrofit.dart';

// File generasi otomatis yang dibuat oleh build_runner (retrofit_generator)
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://ghibliapi.vercel.app')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/films')
  Future<List<MovieModel>> getAllMovies();
}
