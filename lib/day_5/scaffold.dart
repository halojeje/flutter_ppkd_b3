import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

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
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
        ],
      ),
    );
  }
}
