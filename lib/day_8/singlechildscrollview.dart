import 'package:flutter/material.dart';

class SingleChildScrollViewDay9 extends StatelessWidget {
  const SingleChildScrollViewDay9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),

        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 77, 68, 44),
                    width: 200,
                    height: 200,
                  ),
                  Container(color: Colors.amber, width: 300, height: 300),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 10, 82, 25),
              width: 30,
              height: 80,
            ),
            Container(
              color: const Color.fromARGB(255, 211, 184, 30),
              width: 10,
              height: 10,
            ),
            Container(
              color: const Color.fromARGB(255, 7, 124, 52),
              width: 200,
              height: 10,
            ),
            Container(
              color: const Color.fromARGB(255, 221, 255, 177),
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
