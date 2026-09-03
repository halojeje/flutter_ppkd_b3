import 'package:flutter/material.dart';

class InputDetailTugas7 extends StatefulWidget {
  const InputDetailTugas7({super.key, this.initialDarkMode = false});

  final bool initialDarkMode;

  @override
  State<InputDetailTugas7> createState() => InputDetailTugas7State();
}

class InputDetailTugas7State extends State<InputDetailTugas7> {
  bool _isCheck = false;
  bool _isOn = false;
  String? _selectedKategori;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialDarkMode;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: _isOn ? Colors.grey[900] : Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // MODE GELAP //
            Card(
              elevation: 2,
              color: _isOn ? Colors.amber : Colors.white,
              child: SwitchListTile(
                title: Text(
                  'Aktifkan Mode Gelap',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _isOn ? Colors.black : Colors.deepOrange,
                  ),
                ),
                value: _isOn,
                onChanged: (value) {
                  setState(() {
                    _isOn = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 16),

            // SYARAT DAN KETENTUAN //
            Card(
              elevation: 2,
              color: _isOn ? Colors.amber : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Syarat dan Ketentuan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: _isOn ? Colors.black : Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      'Dengan menyetujui syarat ini, Anda setuju untuk menggunakan fitur ini dengan baik dan bertanggung jawab.',
                      style: TextStyle(
                        color: _isOn ? Colors.black : Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: _isCheck,
                      title: Text(
                        'Saya menyetujui persyaratan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _isOn ? Colors.black : Colors.black,
                        ),
                      ),
                      onChanged: (val) =>
                          setState(() => _isCheck = val ?? false),
                    ),
                    Text(
                      _isCheck
                          ? 'Pendaftaran diperbolehkan'
                          : 'Pendaftaran belum tersedia',
                      style: TextStyle(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        color: _isCheck ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // PILIH KATEGORI //
            Card(
              elevation: 2,
              color: _isOn ? Colors.amber : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pilih Kategori',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: _isOn ? Colors.black : Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: _selectedKategori,
                      hint: Text(
                        'Pilih Kategori',
                        style: TextStyle(
                          color: _isOn ? Colors.white70 : Colors.black54,
                        ),
                      ),
                      dropdownColor: _isOn ? Colors.grey[800] : Colors.white,
                      items: ['Elektronik', 'Pakaian', 'Makanan', 'Lainnya']
                          .map((val) {
                            return DropdownMenuItem(
                              value: val,
                              child: Text(
                                val,
                                style: TextStyle(
                                  color: _isOn ? Colors.white : Colors.black,
                                ),
                              ),
                            );
                          })
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedKategori = value;
                        });
                      },
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _selectedKategori == null
                          ? 'Anda belum memilih kategori'
                          : 'Anda memilih kategori: $_selectedKategori',
                      style: TextStyle(
                        color: _isOn ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // PILIH TANGGAL //
            Card(
              elevation: 2,
              color: _isOn ? Colors.amber : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pilih Tanggal',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isOn ? Colors.black : Colors.deepOrange,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _selectedDate == null
                                ? 'Belum memilih tanggal'
                                : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                            style: TextStyle(
                              color: _isOn ? Colors.black : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                            _selectedDate = picked;
                          });
                        }
                      },
                      child: const Text('Pilih'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // ATUR PENGINGAT //
            Card(
              elevation: 2,
              color: _isOn ? Colors.amber : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Atur Pengingat',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isOn ? Colors.black : Colors.deepOrange,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _selectedTime == null
                                ? 'Belum mengatur pengingat'
                                : 'Pukul ${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}',
                            style: TextStyle(
                              color: _isOn ? Colors.black : Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final TimeOfDay? picked = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );

                        if (picked != null) {
                          setState(() {
                            _selectedTime = picked;
                          });
                        }
                      },
                      child: const Text('Atur'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
