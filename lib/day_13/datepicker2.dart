import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: DatePickerExample())),
    );
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  // Store the selected date here
  DateTime? _selectedDate;

  // Function to show the Date Picker dialog
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(), // Current focused date
      firstDate: DateTime(2000), // Earliest date allowed
      lastDate: DateTime(2101), // Latest date allowed
    );

    // Update state if the user picked a date and didn't cancel
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          _selectedDate == null
              ? 'No date chosen yet!'
              : 'Selected Date: ${_selectedDate!.toLocal()}'.split(' ')[0],
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: const Text('Select Date'),
        ),
      ],
    );
  }
}
