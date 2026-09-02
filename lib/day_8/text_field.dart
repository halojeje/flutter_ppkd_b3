import 'package:flutter/material.dart';

class TextFieldDay9 extends StatelessWidget {
  const TextFieldDay9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field"), backgroundColor: Colors.amber),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(decoration: InputDecoration(hintText: "Masukan Password")),

          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
