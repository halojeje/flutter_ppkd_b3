import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_32/models/movie_model.dart';
import 'package:flutter_ppkd_b3/day_32/services/api_service.dart';
import 'package:flutter_ppkd_b3/day_32/services/dio_client.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas15_API/views/home_screen.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas15_API/views/movie_list_details.dart';
// Perbaiki path import di bawah ini sesuai lokasi home_screen.dart dan movie_detail_screen.dart Anda:

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
    _moviesFuture = _fetchMoviesData();
    _searchController.addListener(_onSearchChanged);
  }

  // Helper untuk fetch data dan inisialisasi list lokal
  Future<List<MovieModel>> _fetchMoviesData() async {
    final data = await _apiService.getAllMovies();
    _allMovies = data;
    _applySearch();
    return data;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      _applySearch();
    });
  }

  void _applySearch() {
    final query = _searchController.text.trim().toLowerCase();
    if (query.isEmpty) {
      _filteredMovies = List.from(_allMovies);
    } else {
      _filteredMovies = _allMovies
          .where((m) => (m.title ?? '').toLowerCase().contains(query))
          .toList();
    }
  }

  Future<void> _refreshMovies() async {
    setState(() {
      _moviesFuture = _fetchMoviesData();
    });
    await _moviesFuture;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGhibliBlue,
      body: SafeArea(
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

              // --- Grid View / FutureBuilder ---
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

                    if (_filteredMovies.isEmpty) {
                      return RefreshIndicator(
                        onRefresh: _refreshMovies,
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            alignment: Alignment.center,
                            child: const Text(
                              'Film tidak ditemukan.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }

                    return RefreshIndicator(
                      onRefresh: _refreshMovies,
                      child: GridView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
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
                      ),
                    );
                  },
                ),
              ),
            ],
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
