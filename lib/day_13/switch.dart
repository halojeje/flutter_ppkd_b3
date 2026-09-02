import 'package:flutter/material.dart';

class SwitchDay13 extends StatefulWidget {
  const SwitchDay13({super.key});

  @override
  State<SwitchDay13> createState() => _SwitchDay13State();
}

class _SwitchDay13State extends State<SwitchDay13> {
  final bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isOn ? Colors.white : Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // menampilkan widget swiytch
          switchWidget(),

          //  mengubah warna teks agar terlihat sesuai
          Text(
            _isOn ? "Matikan" : "Hidupkan",
            style: TextStyle(color: _isOn ? Colors.black : Colors.white),
          ),
        ],
      ),
    );
  }
}

Column switchWidget() {
  return Column(
    children: [
      Switch(
        activeThumbColor: Colors.amber,
        inactiveThumbColor: Colors.black,
        value: _isOn,
        onChanged: (value) {
          // 3. Bungkus perubahan variabel di dalam setState
          setState(() {
            _isOn = value;
          });
        },
      ),
      Text(
        _isOn ? "Matiin" : "Hidupin",
        style: TextStyle(color: _isOn ? Colors.black : Colors.white),
      ),
    ],
  );
}
