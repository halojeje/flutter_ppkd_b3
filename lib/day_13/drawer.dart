// import 'package:flutter/material.dart';

// class DrawerTugas7 extends StatefulWidget {
//   const DrawerTugas7({super.key});

//   @override
//   State<DrawerTugas7> createState() => _DrawerTugas7State();
// }

// class _DrawerTugas7State extends State<DrawerTugas7> {
//   // ignore: unused_field
//   int _selectedBottom = 0;

//   void changeBottom(int index) {
//     setState(() {
//       _selectedBottom = index;
//     });
//     Navigator.pop(context);
//   }

//   // Use the selected index to provide the section to InputDetailTugas7

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "Input Interaktif",
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),

//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.red),
//               child: Center(
//                 child: Text(
//                   "MENU INPUT",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),

//             ListTile(
//               leading: Icon(Icons.portrait_outlined),
//               title: Text("Mode Tampilan"),
//               onTap: () {
//                 changeBottom(0);
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.archive_outlined),
//               title: Text("Kategori Produk"),
//               onTap: () {
//                 changeBottom(0);
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.calendar_month_outlined),
//               title: Text("Pilih Tanggal"),
//               onTap: () {
//                 changeBottom(0);
//               },
//             ),

//             ListTile(
//               leading: Icon(Icons.notifications_on_outlined),
//               title: Text("Atur Pengingat"),
//               onTap: () {
//                 changeBottom(0);
//               }
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tugas_flutter_3/about_page.dart';

class DrawerTugas7 extends StatelessWidget {
  const DrawerTugas7({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.amber),
            child: Text(
              'Menu Utama',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

          ListTile(
            leading: Icon(Icons.portrait_outlined),
            title: Text("Mode Tampilan"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.archive_outlined),
            title: Text("Kategori Produk"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: Text("Pilih Tanggal"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.notifications_on_outlined),
            title: Text("Atur Pengingat"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
