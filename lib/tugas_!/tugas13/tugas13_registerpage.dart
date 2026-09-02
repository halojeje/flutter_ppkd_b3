import 'package:flutter/material.dart';
import 'package:flutter_ppkd_b3/day_32/views/movie_list_day32.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas11/tugas11_preference.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas12/tugas12_dbhelper.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas12/tugas12_loginpage.dart';
import 'package:flutter_ppkd_b3/tugas_!/tugas12/tugas12_usermodel12.dart';

class RegisterTugas13 extends StatefulWidget {
  const RegisterTugas13({super.key});

  @override
  State<RegisterTugas13> createState() => _RegisterTugas13State();
}

class _RegisterTugas13State extends State<RegisterTugas13> {
  // 1. Key untuk Form Validation
  final _formKey = GlobalKey<FormState>();

  // 2. Deklarasi Controller
  final namaC = TextEditingController();
  final emailC = TextEditingController();
  final nomorHpC = TextEditingController();
  final passwordC = TextEditingController();
  final asalKotaC = TextEditingController();

  // 3. Deklarasi Variable State & DBHelper
  bool obscurePassword = true;
  final dbHelper = DBHelper();

  // 4. Fungsi Utama Register Data ke SQLite
  Future<void> registerUser() async {
    // Jalankan validasi Form terlebih dahulu
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Buat model dari input pengguna
    final newUser = UserModelSQL(
      nama: namaC.text.trim(),
      email: emailC.text.trim(),
      nomorHp: nomorHpC.text.trim(),
      password: passwordC.text,
      asalKota: asalKotaC.text.trim(),
    );

    // Simpan ke SQLite menggunakan DBHelper
    final success = await dbHelper.registerUser(newUser);

    if (!mounted) return;

    if (success) {
      // Simpan session jika diperlukan
      await PreferenceHelper.saveLoginSession(emailC.text.trim());

      // Bersihkan Form
      namaC.clear();
      emailC.clear();
      nomorHpC.clear();
      passwordC.clear();
      asalKotaC.clear();

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Data berhasil disimpan!')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Email sudah terdaftar!')));
    }
  }

  @override
  void dispose() {
    // Clean up controller saat widget di-destroy
    namaC.dispose();
    emailC.dispose();
    nomorHpC.dispose();
    passwordC.dispose();
    asalKotaC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFB703),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Image.asset('assets/images/tes2.png'),
                  const Text(
                    'REGISTER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Join to Save Your Favorite Idea',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(height: 30),

                  // Input Nama
                  TextFormField(
                    controller: namaC,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      prefixIcon: const Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Input Email
                  TextFormField(
                    controller: emailC,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Input Nomor HP
                  TextFormField(
                    controller: nomorHpC,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Nomor HP',
                      prefixIcon: const Icon(Icons.phone),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Number shouldnt be empty';
                      }
                      if (value.length < 10) {
                        return 'Number is not valid';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Input Password
                  TextFormField(
                    controller: passwordC,
                    obscureText: obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Password shouldnt empty';
                      }
                      if (value.length < 8) {
                        return 'Password min 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Input Asal Kota
                  TextFormField(
                    controller: asalKotaC,
                    decoration: InputDecoration(
                      hintText: 'Asal Kota',
                      prefixIcon: const Icon(Icons.location_city),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Town';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),

                  // Tombol Register
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: registerUser,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFB703),
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Divider(color: Colors.black),
                  const SizedBox(height: 20),

                  // Sign In Redirect
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already Have An Account ? ',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPageTugas12(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Tombol menuju Daftar Film Jepang
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MovieListScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Lihat Daftar Film Jepang',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
