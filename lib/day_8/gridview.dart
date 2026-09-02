import 'package:flutter/material.dart';

class GridViewDay9 extends StatelessWidget {
  const GridViewDay9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"), backgroundColor: Colors.amber),

      body: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 6,
        crossAxisCount: 3,
        children: <Widget>[
          Container(color: Colors.amberAccent),
          Container(color: Colors.black),
          Container(color: Colors.amberAccent),
          Container(color: Colors.black),
          Container(color: Colors.amberAccent),
          Container(color: Colors.black),
        ],
      ),
    );
  }
}
