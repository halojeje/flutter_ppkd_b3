import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class datetimeday13 extends StatefulWidget {
  const datetimeday13({super.key});

  @override
  State<datetimeday13> createState() => _datetimeday13State();
}

class _datetimeday13State extends State<datetimeday13> {
  DateTime? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return DatePickerWidget();
  }

  Column DatePickerWidget() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2021),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
            );
            if (picked != null) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
          child: Text("Pilih Tanggal"),
        ),

        // format lengkap tgl indonesia
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : _selectedTime.toString(),
        ),

        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
      ],
    );
  }
}
