import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 74, 156),
        title: Text("Profil Saya", style: TextStyle(color: Colors.amber)),
        centerTitle: true,
      ),
      body: Column(
        spacing: 5,

        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Jeihan Muthia Savitri",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                decorationColor: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Jakarta Timur",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Seorang peserta pelatihan yang sedang")],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("mendalami Flutter di PPKD.")],
          ),
        ],
      ),
    );
  }
}
