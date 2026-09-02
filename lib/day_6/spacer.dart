import 'package:flutter/material.dart';

class SpacerDay6 extends StatelessWidget {
  const SpacerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Spacer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: Text("Aloha")),
          SizedBox(height: 10),
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.orange)),
          Expanded(child: Container(color: Colors.lime)),

          Row(
            children: [
              Expanded(
                // flex: 2,
                child: Container(height: 200, color: Colors.amber),
              ),
              Spacer(),
              Expanded(child: Container(height: 200, color: Colors.cyan)),
              Spacer(),
              Expanded(child: Container(height: 200, color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
