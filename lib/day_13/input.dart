import 'package:flutter/material.dart';
import 'package:tugas_flutter_3/input_detail.dart';
// ignore: unused_import

enum AppSection { terms, mode, category, date, reminder }

const Map<AppSection, String> _titles = {
  AppSection.terms: 'Syarat & Ketentuan',
  AppSection.mode: 'Mode Tampilan',
  AppSection.category: 'Kategori Produk',
  AppSection.date: 'Pilih Tanggal',
  AppSection.reminder: 'Atur Pengingat',
};

const Map<AppSection, String> _descriptions = {
  AppSection.terms:
      'Buka halaman syarat dan ketentuan sebelum menyetujui akses fitur ini.',
  AppSection.mode:
      'Ubah tampilan aplikasi dengan mode gelap yang lebih nyaman.',
  AppSection.category: 'Pilih kategori produk sesuai kebutuhan anda.',
  AppSection.date: 'Pilih tanggal yang ingin dijadikan acuan aktivitas.',
  AppSection.reminder: 'Tentukan waktu pengingat untuk aktivitas anda.',
};

const Map<AppSection, IconData> _icons = {
  AppSection.terms: Icons.rule_folder,
  AppSection.mode: Icons.dark_mode,
  AppSection.category: Icons.category,
  AppSection.date: Icons.calendar_month,
  AppSection.reminder: Icons.access_time,
};

const Map<AppSection, String> _buttonLabels = {
  AppSection.terms: 'Buka Syarat & Ketentuan',
  AppSection.mode: 'Buka Pengaturan Tampilan',
  AppSection.category: 'Pilih Kategori',
  AppSection.date: 'Pilih Tanggal',
  AppSection.reminder: 'Atur Pengingat',
};

String titleFor(AppSection section) =>
    _titles[section] ?? _titles[AppSection.reminder]!;
String _descriptionFor(AppSection section) =>
    _descriptions[section] ?? _descriptions[AppSection.reminder]!;
IconData _iconFor(AppSection section) =>
    _icons[section] ?? _icons[AppSection.reminder]!;
String _buttonLabelFor(AppSection section) =>
    _buttonLabels[section] ?? _buttonLabels[AppSection.reminder]!;

class Input extends StatefulWidget {
  const Input({super.key, required this.section});

  // Menggunakan Enum AppSection menggantikan String
  final AppSection section;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final bool _isOn = false;
  String get _title => titleFor(widget.section);
  String get _description => _descriptionFor(widget.section);
  IconData get _icon => _iconFor(widget.section);
  String get _buttonLabel => _buttonLabelFor(widget.section);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isOn ? Colors.grey[900] : Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(_icon, size: 42, color: Colors.blue),
                  const SizedBox(height: 12),
                  Text(
                    _title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _isOn ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              InputDetailTugas7(initialDarkMode: _isOn),
                        ),
                      );
                    },
                    icon: const Icon(Icons.open_in_new),
                    label: Text(_buttonLabel),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
