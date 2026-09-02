import 'package:flutter/material.dart';

class ContainerDay6 extends StatelessWidget {
  const ContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container day6"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: 200,
              color: Colors.deepOrangeAccent,
            ),
          ),

          // // 2
          Container(
            height: 100,
            width: 200,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Text("Nama: Jeje"),
                Text("Hobi: Tidur"),
                Text("Alamat: Jakarta Timur"),
              ],
            ),
          ),

          // 4
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(8),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.cyan,
              // backgroundBlendMode: BlendMode.color
              border: Border.all(color: Colors.black, width: 2, strokeAlign: 5),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              children: [
                Text("Nama: Jeje"),
                Text("Hobi: Tackle Bola"),
                Text("Alamat: Jakarta"),
              ],
            ),
          ),

          // 5
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(8),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              // backgroundBlendMode: BlendMode.color
              border: Border.all(
                color: const Color.fromARGB(255, 255, 223, 137),
                width: 2,
                strokeAlign: 5,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  blurRadius: 10,
                  offset: Offset(10, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                Text("Nama: Jeje"),
                Text("Hobi: Travel"),
                Text("Alamat: Indonesia"),
              ],
            ),
          ),

          // 6
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.all(8),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              // backgroundBlendMode: BlendMode.color
              border: Border.all(
                color: const Color.fromARGB(255, 255, 223, 137),
                width: 2,
                strokeAlign: 5,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              gradient: LinearGradient(
                colors: [Colors.red, Colors.amberAccent, Colors.cyan],
              ),
            ),

            child: Column(
              children: [
                Text("Nama: Jeje"),
                Text("Hobi: Bikin Gradient"),
                Text("Alamat: Indonesia"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
