import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShowImageDay10 extends StatefulWidget {
  const ShowImageDay10({super.key});

  @override
  State<ShowImageDay10> createState() => _ShowImageDay10State();
}

class _ShowImageDay10State extends State<ShowImageDay10> {
  bool showImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Show Image Day10",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body: Column(
        children: [
          showImage
              ? Image.asset("assets/images/R.jpg", height: 100)
              : Text("Yah gambar bukan apel"),

          showImage
              ? Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqS67PUwucyWctygcNiRK_zGaZc3YOb6_4Rl1IM9FffiaUJSA7-DkIXPn39CuS7IX91BaPpm4gqsUJlHsefZqNHBg7IjAfCLZolm2dB7Q&s=10",
                  height: 100,
                )
              : Container(color: Colors.white, height: 100, width: 200),

          showImage
              ? Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqS67PUwucyWctygcNiRK_zGaZc3YOb6_4Rl1IM9FffiaUJSA7-DkIXPn39CuS7IX91BaPpm4gqsUJlHsefZqNHBg7IjAfCLZolm2dB7Q&s=10",
                  height: 100,
                )
              : Shimmer(
                  child: Container(
                    color: Colors.amberAccent,
                    height: 100,
                    width: 200,
                  ),
                ),

          ///////Elevated Button/////////
          ElevatedButton(
            onPressed: () {
              setState(() {});
              showImage = !showImage;
            },
            child: Text(showImage ? "Sembunyikan" : "Tampilkan"),
          ),

          ///////Elevated Button/////////
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: showImage ? Colors.black : Colors.cyan,
            ),
            onPressed: () {
              setState(() {});
              showImage = !showImage;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    !showImage ? "Gambar disembunyikan" : "Gambar ditempilkan",
                  ),
                ),
              );
            },

            child: Text(
              showImage ? "Sembunyikan" : "Tampilkan",
              style: TextStyle(color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}
