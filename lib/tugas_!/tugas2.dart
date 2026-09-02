import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEDD8),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFEDD8),
        title: Text(
          "Info Detail",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: 'ConcertOne-Regular.ttf',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        spacing: 3,

        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Idea Gacha Application",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Make Your Ideas Become More Easier")],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("No Need to Think Twice!")],
          ),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xFFFFDAAF),
              // backgroundBlendMode: BlendMode.color
              border: Border.all(
                color: Color(0xFFFFDAAF),
                width: 2,
                strokeAlign: 5,
              ),
              borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.amber,
              //     blurRadius: 10,
              //     offset: Offset(10, 20),
              //   ),
              // ],
            ),

            child: Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/tes1.png',
                    height: 22.0,
                    width: 22.0,
                  ),
                  Text(
                    "peach@email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(width: 60),

                  Icon(Icons.mail),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 1,
                color: Colors.white,
                child: Text('very long card'),
              ),

              SizedBox(width: 4),

              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 1,
                color: Colors.white,
                child: Text('long card'),
              ),

              SizedBox(width: 4),

              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 1,
                color: Colors.white,
                child: Text('long card'),
              ),

              SizedBox(width: 4),

              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 1,
                color: Colors.white,
                child: Text('long card'),
              ),

              SizedBox(width: 4),

              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 1,
                color: Colors.white,
                child: Text('long card'),
              ),

              SizedBox(width: 4),

              Card(
                margin: EdgeInsets.only(top: 10),
                elevation: 1,
                color: Colors.white,
                child: Text('long card'),
              ),
            ],
          ),

          /////////ini icon dan text////////
          // Padding(
          //   padding: const EdgeInsets.only(top: 10, left: 20),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Icon(Icons.color_lens),
          //       Text(
          //         "Color",
          //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          // ),

          ///ini kotak putih/////
          Container(
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFF000000),
                width: 2,
                strokeAlign: 5,
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  blurRadius: 10,
                  offset: Offset(1, 2),
                ),
              ],
            ),

            ///ini isi tulisan kotak//////
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),

                  Text("Color HEX"),
                  Text("#FF6c000"),
                ],
              ),
            ),
          ),

          // // // ini kotak
          // //           Container(
          // //             margin: EdgeInsets.only(top: 10),
          // //             padding: EdgeInsets.all(10),
          // //             height: 100,
          // //             width: 100,
          // //             decoration: BoxDecoration(
          // //               color: Colors.white,
          // //               border: Border.all(
          // //                 color: const Color(0xFF000000),
          // //                 width: 2,
          // //                 strokeAlign: 5,
          // //               ),
          // //               borderRadius: BorderRadius.circular(10),
          // //               boxShadow: [
          // //                 BoxShadow(
          // //                   color: Colors.amber,
          // //                   blurRadius: 10,
          // //                   offset: Offset(1, 2),
          // //                 ),
          // //               ],
          // //             ),

          // //             ///ini isi tulisan kotak//////
          // //             child: Padding(
          // //               padding: const EdgeInsets.only(top: 5),
          // //               child: Column(
          // //                 children: [
          // //                   Container(
          // //                     margin: EdgeInsets.all(5),
          // //                     height: 30,
          // //                     width: 30,
          // //                     decoration: BoxDecoration(color: Colors.amber),
          // //                   ),

          // //                   Text("Color HEX"),
          // //                   Text("#FF6c000"),
          // //                 ],
          // //               ),
          // //             ),
          //           ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // Spaces out the containers
            children: [
              Container(
                width: 170,
                height: 80,
                color: Colors.orange.shade200,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(9),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(color: Colors.white),
                    ),

                    Text("Color HEX"),
                    Text("#FF6c000"),
                  ],
                ),
              ),
              Container(
                width: 170,
                height: 80,
                color: Colors.orange.shade600,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(9),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(color: Colors.white),
                    ),

                    Text("Color HEX"),
                    Text("#FF6c000"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
