import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_32/models/movie_model.dart';
import 'package:flutter_ppkd_b3/day_32/services/api_service.dart';
import 'package:flutter_ppkd_b3/day_32/services/dio_client.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  late ApiService _apiService;
  late Future<List<MovieModel>> _moviesFuture;

  @override
  void initState() {
    super.initState();
    final dio = createDioClient();
    _apiService = ApiService(dio);
    _moviesFuture = _apiService.getAllMovies();
  }

  void _refreshMovies() {
    setState(() {
      _moviesFuture = _apiService.getAllMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Film Jepang'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshMovies,
          ),
        ],
      ),
      body: FutureBuilder<List<MovieModel>>(
        future: _moviesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada data film.'));
          }

          final movies = snapshot.data!;
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: movie.image != null && movie.image!.isNotEmpty
                      ? Image.network(
                          movie.image!,
                          width: 50,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.movie),
                        )
                      : const Icon(Icons.movie),
                  title: Text(movie.title ?? 'Tanpa Judul'),
                  subtitle: Text(
                    '${movie.originalTitle ?? ''}\nTahun: ${movie.releaseDate ?? '-'} • Sutradara: ${movie.director ?? '-'}',
                  ),
                  isThreeLine: true,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
