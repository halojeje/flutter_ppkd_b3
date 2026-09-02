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
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Nama Pengguna",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Email Pengguna",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Telepon Pengguna",
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Input Password",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Konfirmasi Password",
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,

            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // Gunakan ClipRRect untuk memotong sudut gambar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/jkt.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity, // Agar gambar memenuhi lebar
                      height: 150, // Tentukan tinggi gambar
                    ),
                  ),
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
                  // Gunakan ClipRRect untuk memotong sudut gambar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/bdg.png",
                      fit: BoxFit.cover,
                      width: double.infinity, // Agar gambar memenuhi lebar
                      height: 150, // Tentukan tinggi gambar
                    ),
                  ),
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
                  // Gunakan ClipRRect untuk memotong sudut gambar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/jog.png",
                      fit: BoxFit.cover,
                      width: double.infinity, // Agar gambar memenuhi lebar
                      height: 150, // Tentukan tinggi gambar
                    ),
                  ),
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
                  // Gunakan ClipRRect untuk memotong sudut gambar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/smg.png",
                      fit: BoxFit.cover,
                      width: double.infinity, // Agar gambar memenuhi lebar
                      height: 150, // Tentukan tinggi gambar
                    ),
                  ),
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
                  // Gunakan ClipRRect untuk memotong sudut gambar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/lmp.png",
                      fit: BoxFit.cover,
                      width: double.infinity, // Agar gambar memenuhi lebar
                      height: 150, // Tentukan tinggi gambar
                    ),
                  ),
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
                  // Gunakan ClipRRect untuk memotong sudut gambar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/pdg.png",
                      fit: BoxFit.cover,
                      width: double.infinity, // Agar gambar memenuhi lebar
                      height: 150, // Tentukan tinggi gambar
                    ),
                  ),
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
