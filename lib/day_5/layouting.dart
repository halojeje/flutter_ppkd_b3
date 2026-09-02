import 'package:flutter/material.dart';

class LayoutingDay5 extends StatelessWidget {
  const LayoutingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB703),
        title: Text("Layouting Day6"),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisSize.max,
        spacing: 20,
        children: <Widget>[
          Text("Hello Batch 7 DISINI"),
          SizedBox(height: 40),

          Text("Hello Batch 7"),
          SizedBox(height: 10),

          Row(children: [Icon(Icons.access_time), Text("Pukul 9:21")]),

          Row(
            children: [
              Icon(Icons.star),
              SizedBox(width: 10),
              Text("Di bawah ini"),
            ],
          ),

          Row(
            children: [
              Icon(Icons.star),
              SizedBox(width: 10),
              Text("Di bawah ini"),
            ],
          ),

          SizedBox(
            child: Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 10),
                Text("Di bawah ini"),
              ],
            ),
          ),

          Row(
            children: [
              Icon(Icons.access_time),
              Text("Pukul", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),

          Row(
            children: [
              Text("Lokasi"),
              SizedBox(width: 30),
              Text("Lokasi"),
              SizedBox(width: 30),
              Text("Lokasi"),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
                SizedBox(width: 10),
                Icon(Icons.star),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(
              children: [
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
                Icon(Icons.lock_clock),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
