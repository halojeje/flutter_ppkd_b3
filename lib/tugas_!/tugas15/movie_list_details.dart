import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_32/models/movie_model.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas15_API/views/home_screen.dart';
// Perbaiki path import home_screen agar sama dengan file lain:

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // --- App bar biru dengan "Back to List" ---
          SliverAppBar(
            backgroundColor: kGhibliBlue,
            pinned: false,
            floating: false,
            automaticallyImplyLeading: false,
            toolbarHeight: 56,
            title: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Back to List',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // --- Gambar utama film ---
          SliverToBoxAdapter(
            child: movie.image != null && movie.image!.isNotEmpty
                ? Image.network(
                    movie.image!,
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 220,
                      color: Colors.grey[300],
                      child: const Icon(Icons.movie, size: 60),
                    ),
                  )
                : Container(
                    height: 220,
                    color: Colors.grey[300],
                    child: const Icon(Icons.movie, size: 60),
                  ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- Judul ---
                  Text(
                    movie.title ?? 'Tanpa Judul',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // --- Judul asli & romaji ---
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                      children: [
                        if (movie.originalTitle != null)
                          TextSpan(
                            text: '"${movie.originalTitle}", ',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        TextSpan(text: movie.originalTitleRomanised ?? ''),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // --- Description ---
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie.description ?? '-',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // --- Director / Year ---
                  Row(
                    children: [
                      Expanded(
                        child: _DetailField(
                          label: 'Director',
                          value: movie.director ?? '-',
                        ),
                      ),
                      Expanded(
                        child: _DetailField(
                          label: 'Year',
                          value: movie.releaseDate ?? '-',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // --- Producer / Running Time ---
                  Row(
                    children: [
                      Expanded(
                        child: _DetailField(
                          label: 'Producer',
                          value: movie.producer ?? '-',
                        ),
                      ),
                      Expanded(
                        child: _DetailField(
                          label: 'Running Time',
                          value: movie.runningTime != null
                              ? '${movie.runningTime} mins'
                              : '-',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // --- Rating Score ---
                  const Text(
                    'Rating Score',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star_border, size: 18),
                      const SizedBox(width: 4),
                      Text(movie.rtScore ?? '-'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailField extends StatelessWidget {
  const _DetailField({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        Text(value, style: TextStyle(fontSize: 14, color: Colors.grey[800])),
      ],
    );
  }
}
