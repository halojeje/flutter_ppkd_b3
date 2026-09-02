import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_11/home.dart';

class RoutingDay11 extends StatelessWidget {
  const RoutingDay11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Routing Day 11", style: TextStyle()),

        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            // Balik
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Balik / Pop"),
            ),
          ),

          // PushNamed
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text("PushNamed"),
            ),
          ),

          // PushReplacement
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeRoutingDay11()),
                );
              },
              child: Text("PushReplacement"),
            ),
          ),

          // PushandRemoveAll
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeRoutingDay11(),
                  ),
                  (route) => false, // ini buat hapus semua halaman sebelumnya
                );
              },
              child: const Text("PushAndRemoveUntil"),
            ),
          ),

          tombolPush(context),
        ],
      ),
    );
  }

  Center tombolPush(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeRoutingDay11()),
            (route) => false, // ini buat hapus semua halaman sebelumnya
          );
        },
        child: const Text("PushAndRemoveUntil"),
      ),
    );
  }
}
