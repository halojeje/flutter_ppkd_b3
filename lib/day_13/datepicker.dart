import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatepickerDay13 extends StatefulWidget {
  const DatepickerDay13({super.key});

  @override
  State<DatepickerDay13> createState() => _DatepickerDay13State();
}

class _DatepickerDay13State extends State<DatepickerDay13> {
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

        // menampilkan tahun
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEEE, dd MMMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),

        // menampilkna hari singkat
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMMM yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),

        // menampilkan hari singkat
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd/MMM/yyyy',
                  'id_ID',
                ).format(_selectedTime ?? DateTime.now()),
        ),
      ],
    );
  }
}
