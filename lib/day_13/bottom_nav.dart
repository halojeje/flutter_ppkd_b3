import 'package:flutter/material.dart';
import 'package:tugas_flutter_3/drawer.dart';
import 'package:tugas_flutter_3/input_detail.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  // Memakai AppSection.terms menggantikan String 'terms'
  static final List<Widget> _widgetOptions = [
    const DrawerTugas7(),
    InputDetailTugas7(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Drawer'),
          BottomNavigationBarItem(icon: Icon(Icons.input), label: 'Input'),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new),
            label: 'Detail',
          ),
        ],
      ),
    );
  }
}
