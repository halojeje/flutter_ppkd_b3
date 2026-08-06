import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/extension/navigator.dart';
import 'package:lottie/lottie.dart';

class HasilPendaftaranPage extends StatelessWidget {
  final String nama;
  final String email;
  final String nomorHp;
  final String kotaAsal;
  final String alamat;
  final String instansi;

  const HasilPendaftaranPage({
    super.key,
    required this.nama,
    required this.email,
    required this.nomorHp,
    required this.kotaAsal,
    required this.alamat,
    required this.instansi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Pendaftaran"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: $nama"),
            const SizedBox(height: 8),
            Text("Email: $email"),
            const SizedBox(height: 8),
            Text("Nomor HP: $nomorHp"),
            const SizedBox(height: 8),
            Text("Alamat: $alamat"),
            const SizedBox(height: 8),
            Text("Kota Asal: $kotaAsal"),
            const SizedBox(height: 8),
            Text("Instansi: $instansi"),
          ],
        ),
      ),
    );
  }
}

class TugasFlutter10 extends StatefulWidget {
  const TugasFlutter10({super.key});

  @override
  State<TugasFlutter10> createState() => _TugasFlutter10State();
}

class _TugasFlutter10State extends State<TugasFlutter10> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nomorHpController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController kotaAsalController = TextEditingController();
  final TextEditingController instansiController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    nomorHpController.dispose();
    alamatController.dispose();
    kotaAsalController.dispose();
    instansiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Formulir Pendaftaran",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email wajib diisi";
                  } else if (!value.contains('@')) {
                    return "Email tidak valid (harus mengandung karakter '@')";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: nomorHpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Nomor HP ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: kotaAsalController,
                decoration: InputDecoration(
                  labelText: "Kota Asal",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Kota Asal wajib diisi";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: alamatController,
                decoration: InputDecoration(
                  labelText: "Alamat",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Alamat wajib diisi";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: instansiController,
                decoration: InputDecoration(
                  labelText: "Instansi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Instansi wajib diisi";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey[150],
                        title: const Text(
                          "Pendaftaran Berhasil",
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 120,
                              child: Lottie.asset(
                                "assets/animation/success.json",
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Data pendaftaran berhasil divalidasi dan dikirim!",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);

                              // 3. Panggil HasilPendaftaranPage di sini
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HasilPendaftaranPage(
                                    nama: namaController.text,
                                    email: emailController.text,
                                    nomorHp: nomorHpController.text,
                                    kotaAsal: kotaAsalController.text,
                                    alamat: alamatController.text,
                                    instansi: instansiController.text,
                                  ),
                                ),
                              );
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey[150],
                        title: const Text(
                          "Peringatan Validasi",
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 120,
                              child: Lottie.asset(
                                "assets/animation/error.json",
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Mohon lengkapi semua data wajib dengan format yang benar!",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: const Text("Kembali"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text("Daftar", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
