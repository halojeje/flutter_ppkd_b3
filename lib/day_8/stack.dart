import 'package:flutter/material.dart';

class StackDay8 extends StatelessWidget {
  const StackDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Day8"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Stack(
        alignment: AlignmentGeometry.center,

        children: [
          Container(height: 400, width: 400, color: Colors.red),
          Container(height: 300, width: 300, color: Colors.green),
          Container(height: 100, width: 100, color: Colors.blue),
        ],
      ),

      // Stack(
      //   alignment: AlignmentGeometry.center,

      //   children: [
      //     Container(height: 400, width: 400, color: Colors.red),
      //     Container(height: 300, width: 300, color: Colors.green),
      //     Container(height: 100, width: 100, color: Colors.blue),
      //   ],
      // ),
    );
  }
}
