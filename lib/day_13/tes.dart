
// class _checkboxday13State extends State<checkboxday13> {
//   bool _isCheck = false;
//   // bool _isOn = false;
//   // String? _selected;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Checkbox(
//           value: _isCheck,
//           onChanged: (value) {
//             _isCheck = value ?? false;
//             setState(() {});
//           },
//         ),
//         Text(_isCheck ? "Sudah di ceklist" : "Belum di ceklist"),

//         // SWITCH
//         Switch(
//           activeThumbColor: Colors.amber,
//           inactiveThumbColor: Colors.black,
//           value: _isOn,
//           onChanged: (value) {
//             _isOn = value ?? false;
//             setState(() {});
//           },
//         ),



//          Text(   
//           _isOn ? "Matiin" : "Hidupin",
//           style: TextStyle(color: _isOn ? Colors.black : Colors.white),
//          ),
//     );
//   ]

      
      

//         // DROPDOWNBUTTON
//         DropdownButton(
//           value: _selected
//           items: ["Merah", "Kuning", "Hijau"].map((String val) {
//             return DropdownMenuItem(value: val, child: Text(val));
//           }).toList(),
//           onChanged: (value) {
//             setState(() {
//               _selected = value;
//             });
//           },
//         ),

//         DropdownButtonFormField(
//           decoration: InputDecoration(
//           fillColor: _selected == "Merah"
//           ? Colors.red
//           : _selected == "Kuning"
//           ? Colors.yellow
//           : _selected "Hijau"
//           ? Colors.green,
//           : Colors.white,
//           ),


//           )
//           value: _selected
//           items: ["Merah", "Kuning", "Hijau"].map((String val) {
//             return DropdownMenuItem(value: val, child: Text(val));
//           }).toList(),
//           onChanged: (value) {
//             setState(() {
//               _selected = value;
//             });
//           },
//         )


//         Text(_selected.toString()),
//         Container(
//           height: 50, 
//           width: 50, 
//           color: _selected == "Merah"
//           ? Colors.red
//           : _selected == "Kuning"
//           ? Colors.yellow
//           : _selected "Hijau"
//           ? Colors.green,
//           : Colors.white,
//           ),
//           ],
//         ) 
     
//   }
// // }