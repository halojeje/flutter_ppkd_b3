import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_20/constant/app_colors.dart';
import 'package:flutter_ppkd_b3/day_33/views/home_screen.dart';
import 'package:flutter_ppkd_b3/extension/navigator.dart';

class SplashScreenDay33 extends StatefulWidget {
  const SplashScreenDay33({super.key});

  @override
  State<SplashScreenDay33> createState() => _SplashScreenDay33State();
}

class _SplashScreenDay33State extends State<SplashScreenDay33> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    // Memberikan jeda tampilan splash screen selama 2 detik
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    // Pindah ke HomeScreen setelah splash screen selesai
    context.pushAndRemoveAll(const HomeScreenDay33());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryNavy,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 80, color: Colors.white),
            const SizedBox(height: 16),
            const Text(
              "PrepMaster",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
