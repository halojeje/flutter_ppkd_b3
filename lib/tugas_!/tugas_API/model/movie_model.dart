// Day 32: Model Data menggunakan JsonSerializable
// File ini merepresentasikan data JSON dari Studio Ghibli API (https://ghibliapi.dev/films)

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

// File generasi otomatis yang dibuat oleh build_runner
part 'movie_model.g.dart';

// Helper function opsional untuk konversi JSON String ke List<MovieModel>
List<MovieModel> movieModelFromJson(String str) =>
    List<MovieModel>.from(json.decode(str).map((x) => MovieModel.fromJson(x)));

String movieModelToJson(List<MovieModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class MovieModel {
  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "title")
  final String? title;

  // Judul asli dalam bahasa Jepang, contoh: "風の谷のナウシカ"
  @JsonKey(name: "original_title")
  final String? originalTitle;

  // Judul asli versi romaji, contoh: "Kaze no Tani no Naushika"
  @JsonKey(name: "original_title_romanised")
  final String? originalTitleRomanised;

  @JsonKey(name: "image")
  final String? image;

  @JsonKey(name: "movie_banner")
  final String? movieBanner;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "director")
  final String? director;

  @JsonKey(name: "producer")
  final String? producer;

  // API mengembalikan tahun sebagai String, contoh: "1984"
  @JsonKey(name: "release_date")
  final String? releaseDate;

  @JsonKey(name: "running_time")
  final String? runningTime;

  @JsonKey(name: "rt_score")
  final String? rtScore;

  MovieModel({
    this.id,
    this.title,
    this.originalTitle,
    this.originalTitleRomanised,
    this.image,
    this.movieBanner,
    this.description,
    this.director,
    this.producer,
    this.releaseDate,
    this.runningTime,
    this.rtScore,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
