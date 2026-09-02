import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Laporan & Riwayat Udara",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),

      body: Column(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                width: 400,
                height: 360,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ListView(
                      children: [
                        Text(
                          "Laporan Kondisi Udara",
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
                            labelText: "Titik Lokasi",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Skor AQI Teramati",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Nama Pelapor",
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF1F9F8),
                            labelText: "Catatan Tambahan (Misal:)",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
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

          Divider(),

          const Text(
            "Riwayat Laporan Terakhir",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),

          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: [
                // Card Pertama
                Card(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 1),
                  elevation: 1,
                  color: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text('Jakarta Pusat'),
                    subtitle: Text(
                      'AQI 156 - Tidak Sehat. Dilaporkan 5 menit lalu.',
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    isThreeLine: true,
                  ),
                ),

                // Card Kedua (Sekarang sudah masuk ke dalam children Column agar rapi)
                Card(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 1),
                  elevation: 1,
                  color: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text('Jakarta Pusat'),
                    subtitle: Text(
                      'AQI 156 - Tidak Sehat. Dilaporkan 5 menit lalu.',
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    isThreeLine: true,
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 1),
                  elevation: 1,
                  color: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text('Jakarta Pusat'),
                    subtitle: Text(
                      'AQI 156 - Tidak Sehat. Dilaporkan 5 menit lalu.',
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    isThreeLine: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// --- Bagian ListTile ---
            // const ListTile(
            //   leading: Icon(Icons.person, color: Colors.green),
            //   title: Text("Jakarta Pusat"),
            //   subtitle: Text("Status: Aktif"),
            // ),
            // const ListTile(
            //   leading: Icon(Icons.person, color: Colors.red),
            //   title: Text("Bandung Kota"),
            //   subtitle: Text("Status: Non-Aktif"),
            // ),
            // const ListTile(
            //   leading: Icon(Icons.person, color: Colors.green),
            //   title: Text("Yogyakarta"),
            //   subtitle: Text("Status: Aktif"),
            // ),
            // const ListTile(
            //   leading: Icon(Icons.person, color: Colors.orange),
            //   title: Text("Semarang"),
            //   subtitle: Text("Status: Pending"),
            // ),
