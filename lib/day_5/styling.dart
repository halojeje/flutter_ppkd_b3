import 'package:flutter/material.dart';

class Styling extends StatelessWidget {
  const Styling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB703),
        title: Text("Hello Batch 7"),
        centerTitle: true,
        actions: [Text("HISTORY"), Text("help")],
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisSize.max,
        spacing: 20,
        children: [
          Text(
            "Hello Batch 7",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.blue,
            ),
          ),
          Text("Hello Batch 7"),
          Text(
            "Hello Batch 7",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.amber,
              backgroundColor: Colors.black,
            ),
          ),
          Icon(Icons.star),
          Text(
            "Di bawah ini",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.lightGreen,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Icon(Icons.star),
              Text("Hello Batch 7"),
              Text("Ada MBG Premium"),
            ],
          ),
        ],
      ),
    );
  }
}
