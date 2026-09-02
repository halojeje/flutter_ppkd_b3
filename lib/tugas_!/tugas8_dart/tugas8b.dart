import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas8_dart/aboutpage.dart';
import 'package:flutter_ppkd_b3/day_6/expanded.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas8_dart/tugas8a.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 8 Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Tugas8Flutter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Tugas8Flutter extends StatefulWidget {
  const Tugas8Flutter({super.key});

  @override
  State<Tugas8Flutter> createState() => _Tugas8FlutterState();
}

class _Tugas8FlutterState extends State<Tugas8Flutter> {
  final int _currentIndex = 0;

  final List<Widget> _pages = [const TugasFlutter8a(), const AboutPage()];

  final List<String> _titles = ['Halaman Utama', 'Tentang Aplikasi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _titles[_currentIndex],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),





      drawer: _currentIndex == 0 ? _buildMainDrawer() : null,

      body: _pages[_currentIndex],

      // bottom nav
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
        _currentIndex: index;
          });
        },
        items: const [
          // icon home
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'),

          // icon tentang aplikasi
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tentang Aplikasi',
          ),
        ],
      ),




// DRAWER MAIN NYA
  Widget _buildMainDrawer(){
        return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Navigation Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.cottage_outlined),
              title: Text("Syarat & Ketentuan"),
            ),

            ListTile(
              leading: Icon(Icons.portrait_outlined),
              title: Text("Mode Tampilan"),
            ),

            ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text("Kategori Produk"),
            ),

            ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text("Pilih Tanggal"),
            ),

            ListTile(
              leading: Icon(Icons.notifications_on_outlined),
              title: Text("Atur Pengingat"),
            ),



          ],
        ),
      );
  }
    );
  

}


      );
      


    
  }