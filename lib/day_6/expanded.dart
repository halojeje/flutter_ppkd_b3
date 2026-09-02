import 'package:flutter/material.dart';

class ExpandedDay6 extends StatelessWidget {
  const ExpandedDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Day6"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(height: 170, color: Colors.amber)),
              Expanded(child: Container(color: Colors.black)),
              Expanded(child: Container(color: Colors.cyan)),
            ],
          ),

          Expanded(flex: 3, child: Container(color: Colors.amber)),
          Expanded(child: Container(color: Colors.black)),
          Expanded(child: Container(color: Colors.cyan)),
        ],
      ),
    );
  }
}
