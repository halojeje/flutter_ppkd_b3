import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas11/tugas11_loginpage.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas11/tugas11_preference.dart';
// Jika ada HomePage, import file HomePage di sini

class SplashScreenTugas11 extends StatefulWidget {
  const SplashScreenTugas11({super.key});

  @override
  State<SplashScreenTugas11> createState() => _SplashScreenTugas11State();
}

class _SplashScreenTugas11State extends State<SplashScreenTugas11> {
  @override
  void initState() {
    super.initState();
    _checkSession();
  }

  Future<void> _checkSession() async {
    // 1. Tahan tampilan selama 2 detik
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    // 2. Cek status login dari SharedPreferences
    bool isLogged = await PreferenceHelper.isLoggedIn();

    if (!mounted) return;

    // 3. Pindah halaman menggunakan pushReplacement (agar tidak bisa di-back ke Splash Screen)
    if (isLogged) {
      // Jika sudah login, arahkan ke HomePage (atau LoginPage jika HomePage belum dibuat)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPageTugas11()),
      );
    } else {
      // Jika belum login, arahkan ke LoginPage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPageTugas11()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFB703),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo / Gambar Aplikasi
            Image.asset('assets/images/tes_register.png', width: 200),
            const SizedBox(height: 30),

            // Circular Progress Indicator (Loading)
            const CircularProgressIndicator(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
