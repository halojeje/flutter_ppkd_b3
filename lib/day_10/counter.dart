import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:flutter/material.dart';

class CounterDay10 extends StatefulWidget {
  const CounterDay10({super.key});

  @override
  State<CounterDay10> createState() => _CounterDay10State();
}

class _CounterDay10State extends State<CounterDay10> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter Day10",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(counter.toString(), style: TextStyle(fontSize: 100)),
                ],
              ),
            ],
          ),

          /////ElevatedButton/////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  counter--;
                },
                child: Text("Kurang"),
              ),

              ElevatedButton(
                onPressed: () {
                  counter = 0;
                  setState(() {});
                },
                child: Text("Back to zero"),
              ),

              ElevatedButton(
                onPressed: () {
                  log(counter.toString());
                  setState(() {});
                  counter++;
                },
                child: Text("Tambah"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
