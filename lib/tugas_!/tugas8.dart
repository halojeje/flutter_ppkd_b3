// import 'package:flutter/material.dart';
// import 'package:tugas_flutter_3/drawer.dart';
// import 'package:tugas_flutter_3/input_detail.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tugas 8 Flutter',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amber),
//       home: const TugasFlutter8(),
//     );
//   }
// }

// class TugasFlutter8 extends StatefulWidget {
//   const TugasFlutter8({super.key});

//   @override
//   State<TugasFlutter8> createState() => _Tugas8FlutterState();
// }

// class _Tugas8FlutterState extends State<TugasFlutter8> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [const InputDetailTugas7(), const AboutPage()];

//   String get _appBarTitle {
//     return _currentIndex == 0 ? 'Home' : 'Tentang Aplikasi';
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(_appBarTitle), elevation: 2),

//       // drawer: _currentIndex == 0 ? const DrawerTugas7() : null,

//       // DRAWER //
//       drawer: _currentIndex == 0
//           ? Drawer(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: [
//                   const DrawerHeader(
//                     decoration: BoxDecoration(color: Colors.amber),
//                     child: Text(
//                       'NAVIGATOR',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),

//                   ListTile(
//                     leading: Icon(Icons.portrait_outlined),
//                     title: Text("Mode Tampilan"),
//                     onTap: () {
//                       Navigator.pop(context); // tutup drawer
//                       _onItemTapped(0); // pindah ke Home
//                     },
//                   ),

//                   ListTile(
//                     leading: Icon(Icons.archive_outlined),
//                     title: Text("Kategori Produk"),
//                     onTap: () {
//                       Navigator.pop(context); // tutup drawer
//                       _onItemTapped(0); // pindah ke Home
//                     },
//                   ),

//                   ListTile(
//                     leading: Icon(Icons.calendar_month_outlined),
//                     title: Text("Pilih Tanggal"),
//                     onTap: () {
//                       Navigator.pop(context); // tutup drawer
//                       _onItemTapped(0); // pindah ke Home
//                     },
//                   ),

//                   ListTile(
//                     leading: Icon(Icons.notifications_on_outlined),
//                     title: Text("Atur Pengingat"),
//                     onTap: () {
//                       Navigator.pop(context); // tutup drawer
//                       _onItemTapped(0); // pindah ke Home
//                     },
//                   ),
//                 ],
//               ),
//             )
//           : null,

//       // DRAWER //
//       body: _pages[_currentIndex],

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.deepOrange,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
//         ],
//       ),
//     );
//   }
// }

// class AboutPage extends StatelessWidget {
//   const AboutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         children: [
//           const SizedBox(height: 20),
//           const CircleAvatar(
//             radius: 48,
//             backgroundColor: Colors.amber,
//             child: Icon(
//               Icons.catching_pokemon_outlined,
//               size: 48,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 16),
//           Text(
//             'Ran.Idea',
//             style: Theme.of(
//               context,
//             ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 8),
//           Chip(
//             label: const Text('Versi 1.0.0'),
//             backgroundColor: Colors.blue.shade50,
//           ),
//           const SizedBox(height: 20),
//           Card(
//             elevation: 3,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'History Generate Card',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'All Saved Card Result Here',
//                     style: TextStyle(color: Colors.black, height: 1.4),
//                   ),
//                   Divider(height: 28),
//                   Row(
//                     children: [
//                       Icon(Icons.catching_pokemon, color: Colors.amber),
//                       SizedBox(width: 12),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'User Beta',
//                             style: TextStyle(fontSize: 12, color: Colors.grey),
//                           ),
//                           Text(
//                             'Ash Ketchup',
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
