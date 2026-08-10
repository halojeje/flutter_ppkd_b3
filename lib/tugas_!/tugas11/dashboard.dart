import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas11/tugas11_loginpage.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas11/tugas11_preference.dart';

class LandingPage extends StatelessWidget {
  final String email;

  const LandingPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              // Hapus Session Login
              await PreferenceHelper.clearSession();

              if (!context.mounted) return;

              // Arahkan kembali ke Halaman Login/Register
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPageTugas11(),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang, $email!',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await PreferenceHelper.clearSession();
                if (!context.mounted) return;
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPageTugas11(),
                  ),
                  (route) => false,
                );
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
