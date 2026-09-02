import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.info_outline, size: 80, color: Colors.blue),
            SizedBox(height: 24),
            Text(
              'Ran.Idea',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'Aplikasi generator Idea',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 40),
            Divider(),
            SizedBox(height: 16),
            Text('tes', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Versi Aplikasi: 1.1.2', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
