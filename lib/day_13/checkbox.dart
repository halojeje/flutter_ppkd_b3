import 'package:flutter/material.dart';

class checkboxDay13 extends StatefulWidget {
  const checkboxDay13({super.key});

  @override
  State<checkboxDay13> createState() => _checkboxDay13State();
}

class _checkboxDay13State extends State<checkboxDay13> {
  bool _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxWidget();
  }

  // Column CheckboxWidget() {
  //   return Column(
  //     children: [
  //       Checkbox(
  //         value: _isCheck,
  //         onChanged: (value) {
  //           _isCheck = value ?? false;
  //           setState(() {});
  //         },
  //       ),
  //       Text(
  //         _isCheck
  //             ? "Pendafataran di perbolehkan"
  //             : "Pendaftaran belum tersedia",
  //       ),
  //     ],
  //   );

  Row CheckboxWidget() {
    return Row(
      mainAxisSize:
          MainAxisSize.min, // Agar lebar Row menyesuaikan dengan isi kontennya
      crossAxisAlignment: CrossAxisAlignment
          .center, // Memastikan Checkbox dan Text sejajar secara vertikal
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            setState(() {
              _isCheck = value ?? false;
            });
          },
        ),
        Text(
          _isCheck ? "Pendaftaran diperbolehkan" : "Pendaftaran belum tersedia",
        ),
      ],
    );
  }
}
