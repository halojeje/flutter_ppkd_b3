import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_32/models/movie_model.dart';
import 'package:flutter_ppkd_b3/day_32/services/api_service.dart';
import 'package:flutter_ppkd_b3/day_32/services/dio_client.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas_API/views/home_screen.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas_API/views/movie_list_details.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  late ApiService _apiService;
  late Future<List<MovieModel>> _moviesFuture;

  List<MovieModel> _allMovies = [];
  List<MovieModel> _filteredMovies = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final dio = createDioClient();
    _apiService = ApiService(dio);
    _moviesFuture = _apiService.getAllMovies();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredMovies = _allMovies;
      } else {
        _filteredMovies = _allMovies
            .where((m) => (m.title ?? '').toLowerCase().contains(query))
            .toList();
      }
    });
  }

  void _refreshMovies() {
    setState(() {
      _moviesFuture = _apiService.getAllMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGhibliBlue,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => _refreshMovies(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // --- Search bar ---
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search Ghibli works',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // --- Grid ---
                Expanded(
                  child: FutureBuilder<List<MovieModel>>(
                    future: _moviesFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      }

                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            'Error: ${snapshot.error}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }

                      if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return const Center(
                          child: Text(
                            'Tidak ada data film.',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }

                      // Simpan data mentah sekali saja lalu terapkan filter search.
                      if (_allMovies.isEmpty ||
                          _allMovies.length != snapshot.data!.length) {
                        _allMovies = snapshot.data!;
                        _filteredMovies = _searchController.text.isEmpty
                            ? _allMovies
                            : _filteredMovies;
                        if (_searchController.text.isEmpty) {
                          _filteredMovies = _allMovies;
                        }
                      }

                      if (_filteredMovies.isEmpty) {
                        return const Center(
                          child: Text(
                            'Film tidak ditemukan.',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }

                      return GridView.builder(
                        itemCount: _filteredMovies.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 0.62,
                            ),
                        itemBuilder: (context, index) {
                          final movie = _filteredMovies[index];
                          return _MovieCard(movie: movie);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  const _MovieCard({required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => MovieDetailScreen(movie: movie)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: movie.image != null && movie.image!.isNotEmpty
                  ? Image.network(
                      movie.image!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return const Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(child: Icon(Icons.movie, size: 40)),
                    )
                  : const Center(child: Icon(Icons.movie, size: 40)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 2),
              child: Text(
                movie.title ?? 'Tanpa Judul',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Text(
                movie.releaseDate ?? '-',
                style: TextStyle(color: Colors.grey[600], fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
