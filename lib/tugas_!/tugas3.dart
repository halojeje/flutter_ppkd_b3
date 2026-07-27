import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Register & Edukasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Center(
              child: SizedBox(
                width: 375,
                height: 420,
                child: Card(
                  elevation: 6,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView(
                      children: [
                        Text(
                          "Form Registrasi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(6)),

                        // --- Bagian Form ---
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Nama Pengguna",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Email Pengguna",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Telepon Pengguna",
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Input Password",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: "Konfirmasi Password",
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Title(
            color: Colors.black,
            child: Text(
              "Wilayah Pemantauan Kualitas Udara Terdekat",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,

           
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/jkt.jpg", fit: BoxFit.cover),

                  Container(
                    color: Color(0xFF607D89),
                    padding: EdgeInsets.all(4),

                    child: Text(
                      "Jakarta",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/bdg.png", fit: BoxFit.cover),
                  Container(
                    color: Color(0xFF607D89),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Bandung",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/jog.png", fit: BoxFit.cover),
                  Container(
                    color: Color(0xFF607D89),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Yogyakarta",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/smg.png", fit: BoxFit.cover),
                  Container(
                    color: Color(0xFF607D89),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Semarang",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/lmp.png", fit: BoxFit.cover),
                  Container(
                    color: Color(0xFF607D89),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Lampung",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/pdg.png", fit: BoxFit.cover),
                  Container(
                    color: Color(0xFF607D89),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Padang",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
