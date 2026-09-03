// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class InputWidgetDay13 extends StatefulWidget {
//   const InputWidgetDay13({super.key});

//   @override
//   State<InputWidgetDay13> createState() => _InputWidgetDay13State();
// }

// class _InputWidgetDay13State extends State<InputWidgetDay13> {
//   bool _isCheck = false;
//   bool _isOn = false;
//   String? _selected;
//   DateTime? _selectedTime;
//   TimeOfDay? _selectedTimeofDay;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       color: _isOn ? Colors.white : Colors.black,
//       child: Column(
//         children: [
//           Checkbox(
//             value: _isCheck,
//             onChanged: (value) {
//               _isCheck = value ?? false;
//               setState(() {});
//             },
//           ),
//           Text(_isCheck ? "Sudah di ceklist" : "Belum di ceklist"),

//           // SWITCH
//           Switch(
//             activeThumbColor: Colors.amber,
//             inactiveThumbColor: Colors.black,
//             value: _isOn,
//             onChanged: (value) {
//               _isOn = value ?? false;
//               setState(() {});
//             },
//           ),

//           // DATE PICKER
//           ElevatedButton(
//             onPressed: () async {
//               final DateTime? picked = await showDatePicker(
//                 context: context,
//                 firstDate: DateTime(2021),
//                 lastDate: DateTime.now(),
//                 initialDate: DateTime.now(),
//               );

//               setState(() {
//                 _selectedTime = picked;
//               });
//             },

//             child: Text("Pilih Tangga"),
//           ),

//           Text(
//             _selectedTime == null
//                 ? "Anda belum pilih tanggal"
//                 : _selectedTime.toString(),
//           ),

//           Text(
//             _selectedTime == null
//                 ? "Anda belum pilih tanggal"
//                 : DateFormat('yyyy').format(_selectedTime ?? DateTime.now()),
//           ),

//           Text(
//             _selectedTime == null
//                 ? "Anda belum pilih tanggal"
//                 : DateFormat(
//                     'EEE, dd MMM yyyy',
//                   ).format(_selectedTime ?? DateTime.now()),
//           ),

//           Text(
//             _selectedTime == null
//                 ? "Anda belum pilih tanggal"
//                 : DateFormat(
//                     'EEE, dd MMM yyyy',
//                   ).format(_selectedTime ?? DateTime.now()),
//           ),

//           ElevatedButton(
//             onPressed: () async {
//               final TimeofDay? picked = await showTimePicker(
//                 context: context,
//                 // firstDate: DateTime(2021),
//                 // lastDate: DateTime.now(),
//                 initialTime: TimeOfDay.now(),
//               );
//             if (picked ! = null) {
//               setState(() {
//                 _selectedTimeofDay = picked;
//               });
          
//             }
//             }
//           ),
        
        
        
//         ],
//       ),
//     );

//     //        Text(
//     //         _isOn ? "Matiin" : "Hidupin",
//     //         style: TextStyle(color: _isOn ? Colors.black : Colors.white),
//     //        ),
//     //   );
//     // ]

//     // // DROPDOWNBUTTON
//     // DropdownButton(
//     //   value: _selected
//     //   items: ["Merah", "Kuning", "Hijau"].map((String val) {
//     //     return DropdownMenuItem(value: val, child: Text(val));
//     //   }).toList(),
//     //   onChanged: (value) {
//     //     setState(() {
//     //       _selected = value;
//     //     });
//     //   },
//     // ),

//     // DropdownButtonFormField(
//     //   decoration: InputDecoration(
//     //   fillColor: _selected == "Merah"
//     //   ? Colors.red
//     //   : _selected == "Kuning"
//     //   ? Colors.yellow
//     //   : _selected "Hijau"
//     //   ? Colors.green,
//     //   : Colors.white,
//     //   ),

//     //   )
//     //   value: _selected
//     //   items: ["Merah", "Kuning", "Hijau"].map((String val) {
//     //     return DropdownMenuItem(value: val, child: Text(val));
//     //   }).toList(),
//     //   onChanged: (value) {
//     //     setState(() {
//     //       _selected = value;
//     //     });
//     //   },
//     // )

//     // Text(_selected.toString()),
//     // Container(
//     //   height: 50,
//     //   width: 50,
//     //   color: _selected == "Merah"
//     //   ? Colors.red
//     //   : _selected == "Kuning"
//     //   ? Colors.yellow
//     //   : _selected "Hijau"
//     //   ? Colors.green,
//     //   : Colors.white,
//     //   ),
//   }
// }
