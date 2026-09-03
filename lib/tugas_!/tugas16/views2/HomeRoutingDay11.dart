import 'package:flutter/material.dart';

class HomeRoutingDay11 extends StatelessWidget {
  const HomeRoutingDay11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Home Routing Day 11"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Halaman Home", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // tombol balik
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
