import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas15_API/views/movie_list.dart';

const kGhibliBlue = Color(0xFF1CADE4);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGhibliBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const Spacer(flex: 2),
              const Icon(
                Icons
                    .movie_filter_outlined, // Atau gunakan Icons.pets_outlined / Icons.movie
                size: 140,
                color: Colors.white,
              ),
              const SizedBox(height: 12),
              const Text(
                'スタジオジブリ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'STUDIO GHIBLI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                '"I would like to make a film to tell children '
                '\'it\'s good to be alive\'."\n— Hayao Miyazaki',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Spacer(flex: 3),
              SizedBox(
                width: 300,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: kGhibliBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const MovieListScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'See Ghibli Works',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
