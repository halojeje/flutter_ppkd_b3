import 'package:flutter/material.dart';

class dropdownDay13 extends StatefulWidget {
  const dropdownDay13({super.key});

  @override
  State<dropdownDay13> createState() => _dropdownDay13State();
}

class _dropdownDay13State extends State<dropdownDay13> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          dropdownColor: Colors.cyan,
          value: _selected,
          items: ["Pakaian", "Elektronik", "Makanan"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),

        Text(_selected.toString()),
        Container(
          height: 50,
          width: 50,
          color: _selected == "Merah"
              ? Colors.red
              : _selected == "Kuning"
              ? Colors.yellow
              : _selected == "Hijau"
              ? Colors.green
              : Colors.white,
        ),
      ],
    );
  }
}
