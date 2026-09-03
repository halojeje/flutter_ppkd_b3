// Day 33: Retrofit API Service Interface
import 'package:dio/dio.dart';
import 'package:flutter_ppkd_b3/day_33/model/auth_response.dart';
import 'package:flutter_ppkd_b3/day_33/model/profile_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart'; // Menghubungkan ke file generator otomatis

@RestApi(baseUrl: 'https://absensib1.mobileprojp.com')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Endpoint Registrasi Pengguna Baru
  @POST('/api/register')
  Future<AuthResponse> register(@Body() Map<String, dynamic> body);

  // Endpoint Login Pengguna
  @POST('/api/login')
  Future<AuthResponse> login(@Body() Map<String, dynamic> body);

  // Endpoint Mengambil Profile Pengguna
  @GET('/api/profile')
  Future<ProfileResponse> getProfile(@Header('Authorization') String token);

  // Endpoint Mengubah Profile Pengguna
  @PUT('/api/profile')
  Future<ProfileResponse> updateProfile(
    @Header('Authorization') String token,
    @Body() Map<String, dynamic> body,
  );
}
