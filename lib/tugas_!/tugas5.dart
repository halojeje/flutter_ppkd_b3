import 'package:flutter/material.dart';
// void main() => runApp(Tugasflutter5());

class Tugasflutter5 extends StatefulWidget {
  const Tugasflutter5({super.key});

  @override
  _InteraksiFlutterState createState() => _InteraksiFlutterState();
}

class _InteraksiFlutterState extends State<Tugasflutter5> {
  bool showText = false;
  bool isFavorite = false;
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Interaksi Flutter",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(
        // padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini tentang ElevatedButton"),

            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                });
              },
              child: Text("Klik Saya!"),
            ),
            if (showText) Text("Text Muncul"),

            SizedBox(height: 30),

            Text("Ini tentang IconButton"),

            // IconButton
            IconButton(
              iconSize: 40.0,
              icon: Icon(Icons.favorite),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
            Text(isFavorite ? "Sudah Jadi Favorit" : "Bukan Favorit"),

            SizedBox(height: 30),
            Text("Ini tentang TextButton"),

            // TextButton
            TextButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                });
              },
              child: Text(
                "Lihat Deskripsi",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (showText)
              Text(
                "Aku anak pagi dan senang berangkat naik KRL berdesakan seperti sarden.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

            SizedBox(height: 30),

            Text("Ini tentang InkWell"),

            // InkWell
            InkWell(
              onTap: () {
                ("Sentuhan terdeteksi");
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kotak Muncul Wave")));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 300,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Sentuh Kotak Ini",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            Text("Ini GestureDetector"),

            // GestureDetector
            GestureDetector(
              onTap: () {
                setState(() {
                  counter += 1;
                });
                ("Ditekan sekali");
              },
              onDoubleTap: () {
                setState(() {
                  counter += 2;
                });
                ("Ditekan dua kali");
              },
              onLongPress: () {
                setState(() {
                  counter += 3;
                });
                ("Tahan lama");
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 300,

                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Angka: $counter",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter--;
          });
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
