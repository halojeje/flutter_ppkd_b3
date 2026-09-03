// import 'package:flutter/material.dart';
// import 'package:flutter_ppkd_b3/day_13/checkbox.dart';
// import 'package:flutter_ppkd_b3/day_13/datepicker2.dart';
// import 'package:flutter_ppkd_b3/day_13/dropdown.dart';
// import 'package:flutter_ppkd_b3/day_6/expanded.dart';
// import 'package:flutter_ppkd_b3/day_8/stack.dart';
// import 'package:flutter_ppkd_b3/extension/navigator.dart';

// class TugasFlutter8a extends StatefulWidget {
//   const TugasFlutter8a({super.key});

//   @override
//   State<TugasFlutter8a> createState() => _TugasFlutter8aState();
// }

// class _TugasFlutter8aState extends State<TugasFlutter8a> {
//   int _selectedBottom = 0;
//   final bool _isAgreed = false;
//   final bool _isDarkMode = false;
//   // String? _selected;
//   DateTime? _selectedTime;
//   TimeOfDay? _selectedTimeofDay;

//   String _formatDate(DateTime? d) {
//     if (d == null) return '-';
//     var hari = d.day < 10 ? '0${d.day}' : '${d.day}';
//     var bulan = d.month < 10 ? '0${d.month}' : '${d.month}';
//     return "$hari-$bulan-${d.year}";
//   }

//   String _formatTime(TimeOfDay? t) {
//     if (t == null) return '-';
//     var jam = t.hour < 10 ? '0${t.hour}' : '${t.hour}';
//     var menit = t.minute < 10 ? '0${t.minute}' : '${t.minute}';
//     return "$jam:$menit";
//   }

//   void changeBottom(int index) {
//     setState(() {
//       _selectedBottom = index;
//     });
//     context.pop(); // Menutup drawer setelah memilih item
//   }
//   // void changeBottom(int index) {
//   //   _selectedBottom = index;
//   //   print("Ini adalah value dari $_selectedBottom");
//   //   setState(() {});
//   //   context.pop();
//   // }

//   final List<Widget> _widgetOptions = [
//     checkboxDay13(),
//     DatePickerExample(),
//     dropdownDay13(),
//     ExpandedDay6(),
//     StackDay8(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: Text(
//           "Tugas Flutter 7",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,

//         drawer: _buildDrawer(),
//         body: Container(
//           color: _isDarkMode ? Colors.grey[900] : Colors.white,
//           padding: const EdgeInsets.all(16.0),

//           child: ListView(
//             children: [
//               IndexedStack(
//                 index: _selectedIndex,
//                 children: [
//                   _pageSyarat(),
//                   _pageMode(),
//                   _pageKategori(),
//                   _pageTanggal(),
//                   _pageWaktu(),
//                 ],
//               ),
//               const Divider(thickness: 1.5),
//               _buildResult(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
