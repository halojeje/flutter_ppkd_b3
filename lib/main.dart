// import 'package:flutter/material.dart';
// import 'package:flutter_ppkd_b3/day_17/service/preference_handler.dart';
// import 'package:flutter_ppkd_b3/day_32/views/movie_list_day32.dart';
// import 'package:flutter_ppkd_b3/tugas_!/tugas13/tugas13_registerpage.dart';
// import 'package:intl/date_symbol_data_local.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // Inisialisasi lokalisasi tanggal untuk format Indonesia (id_ID) agar DateFormat dapat menggunakan format lokal.
//   await initializeDateFormatting("id_ID", null);
//   await PreferenceHandler.init();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),

//       // Halaman awal tetap RegisterTugas13
//       home: const RegisterTugas13(),

//       // Named route ke MovieListScreen, dipanggil dari tombol
//       // "Lihat Daftar Film" di RegisterTugas13
//       routes: {'/movies': (context) => const MovieListScreen()},
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: .center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas_API/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studio Ghibli',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
