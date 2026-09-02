import 'package:dio/dio.dart';
import 'package:flutter_ppkd_b3/day_32/models/movie_model.dart'; // sesuaikan path
import 'package:retrofit/retrofit.dart';

// File generasi otomatis yang dibuat oleh build_runner (retrofit_generator)
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://ghibliapi.dev')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/films')
  Future<List<MovieModel>> getAllMovies();
}
