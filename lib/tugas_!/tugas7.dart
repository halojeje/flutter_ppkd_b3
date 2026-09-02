import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_13/checkbox.dart';
import 'package:flutter_ppkd_b3/day_13/datepicker.dart';
import 'package:flutter_ppkd_b3/day_13/dropdown.dart';
import 'package:flutter_ppkd_b3/day_6/expanded.dart';
import 'package:flutter_ppkd_b3/day_8/stack.dart';
import 'package:flutter_ppkd_b3/extension/navigator.dart';

class TugasFlutter7 extends StatefulWidget {
  const TugasFlutter7({super.key});

  @override
  State<TugasFlutter7> createState() => _TugasFlutter7State();
}

class _TugasFlutter7State extends State<TugasFlutter7> {
  int _selectedBottom = 0;

  void changeBottom(int index) {
    setState(() {
      _selectedBottom = index;
    });
    context.pop(); // Menutup drawer setelah memilih item
  }
  // void changeBottom(int index) {
  //   _selectedBottom = index;
  //   print("Ini adalah value dari $_selectedBottom");
  //   setState(() {});
  //   context.pop();
  // }

  final List<Widget> _widgetOptions = [
    checkboxDay13(),
    DatepickerDay13(),
    dropdownDay13(),
    ExpandedDay6(),
    StackDay8(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Tugas Flutter 7",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Align(
                alignment: AlignmentGeometry.topLeft,
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
              onTap: () {
                changeBottom(0);
              },
            ),

            ListTile(
              leading: Icon(Icons.portrait_outlined),
              title: Text("Mode Tampilan"),
              onTap: () {
                changeBottom(0);
              },
            ),

            ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text("Kategori Produk"),
              onTap: () {
                changeBottom(0);
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text("Pilih Tanggal"),
              onTap: () {
                changeBottom(0);
              },
            ),

            ListTile(
              leading: Icon(Icons.notifications_on_outlined),
              title: Text("Atur Pengingat"),
              onTap: () {
                changeBottom(0);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottom),

      // bottom nav
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottom,
        onTap: (index) {
          setState(() {
            _selectedBottom = index;
          });
        },

        items: const [
          // icon home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          // icon tentang aplikasi
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tentang Aplikasi',
          ),
        ],
      ),
    );
  }
}
