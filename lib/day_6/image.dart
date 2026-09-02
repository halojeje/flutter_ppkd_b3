import 'package:flutter/material.dart';

class ImageContainerDay6 extends StatelessWidget {
  const ImageContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB703),
        title: Text("IMAGE CONTAINER DAY6"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/R.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
