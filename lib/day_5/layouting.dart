import 'package:flutter/material.dart';

class LayoutingDay5 extends StatelessWidget {
  const LayoutingDay5({super.key});

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
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
          Icon(Icons.star),
          Text("Di bawah ini"),
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
