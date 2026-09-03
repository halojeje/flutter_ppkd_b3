// import 'package:flutter/material.dart';
// import 'package:flutter_ppkd_b3/tugas_!/tugas12/tugas12_dbhelper.dart';
// import 'package:flutter_ppkd_b3/tugas_!/tugas12/tugas12_loginpage.dart';
// import 'package:flutter_ppkd_b3/tugas_!/tugas12/tugas12_usermodel12.dart';

// class RegisterTugas12 extends StatefulWidget {
//   const RegisterTugas12({super.key});

//   @override
//   State<RegisterTugas12> createState() => _RegisterTugas12State();
// }

// class _RegisterTugas12State extends State<RegisterTugas12> {
//   final TextEditingController namaC = TextEditingController();

//   final TextEditingController emailC = TextEditingController();

//   final TextEditingController nomorHpC = TextEditingController();

//   final TextEditingController passwordC = TextEditingController();

//   final TextEditingController asalKotaC = TextEditingController();

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   final DBHelper dbHelper = DBHelper();

//   bool obscurePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFFB703),

//       body: SizedBox(
//         width: double.infinity,
//         height: double.infinity,

//         child: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),

//             child: Form(
//               key: _formKey,

//               child: Column(
//                 children: [
//                   const SizedBox(height: 10),

//                   Image.asset('assets/images/tes2.png'),

//                   const Text(
//                     'REGISTER',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 36,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   const SizedBox(height: 8),

//                   const Text(
//                     'Join to Save Your Favorite Idea',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),

//                   const SizedBox(height: 30),

//                   TextFormField(
//                     controller: namaC,
//                     decoration: InputDecoration(
//                       hintText: 'Name',
//                       prefixIcon: const Icon(Icons.person),
//                       filled: true,
//                       fillColor: Colors.grey[50],
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                           width: 5.0,
//                         ),
//                       ),
//                       // --- UBAH DI SINI (Sebelum focused / keadaan aktif biasa) ---
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors
//                               .black, // Mengubah warna border menjadi hitam
//                           width:
//                               3.0, // Atur ketebalan garis sesuai kebutuhan (misal: 1 atau 2)
//                         ),
//                       ),
//                       // -------------------------------------------------------------
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black, // Garis saat diklik / fokus
//                           width: 3,
//                         ),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your Name';
//                       }
//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 20),

//                   TextFormField(
//                     controller: emailC,
//                     decoration: InputDecoration(
//                       hintText: 'Email',
//                       prefixIcon: const Icon(Icons.email),
//                       filled: true,
//                       fillColor: Colors.grey[50],
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                           width: 5.0,
//                         ),
//                       ),
//                       // --- UBAH DI SINI (Sebelum focused / keadaan aktif biasa) ---
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors
//                               .black, // Mengubah warna border menjadi hitam
//                           width:
//                               3.0, // Atur ketebalan garis sesuai kebutuhan (misal: 1 atau 2)
//                         ),
//                       ),
//                       // -------------------------------------------------------------
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black, // Garis saat diklik / fokus
//                           width: 3,
//                         ),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your Email';
//                       }
//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 20),

//                   TextFormField(
//                     controller: nomorHpC,
//                     decoration: InputDecoration(
//                       hintText: 'Nomor HP',
//                       prefixIcon: const Icon(Icons.phone),
//                       filled: true,
//                       fillColor: Colors.grey[50],
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                           width: 5.0,
//                         ),
//                       ),

//                       // --- UBAH DI SINI (Border hitam sebelum focused) ---
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors
//                               .black, // Warna border hitam sebelum di-klik
//                           width:
//                               3.0, // Sesuaikan ketebalan garis sesuai kebutuhan
//                         ),
//                       ),

//                       // ---------------------------------------------------
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color:
//                               Colors.black, // Warna border saat di-klik (focus)
//                           width: 3,
//                         ),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Number shouldnt be empty';
//                       }

//                       if (value.length < 10) {
//                         return 'Number is not valid';
//                       }

//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 20),

//                   TextFormField(
//                     controller: passwordC,
//                     obscureText:
//                         obscurePassword, // Agar teks password tersembunyi/terlihat
//                     decoration: InputDecoration(
//                       hintText: 'Password',
//                       prefixIcon: const Icon(Icons.lock_outline),
//                       // --- SUFFIX ICON HITAM ---
//                       suffixIcon: IconButton(
//                         icon: Icon(
//                           obscurePassword
//                               ? Icons.visibility_off
//                               : Icons.visibility,
//                           color: Colors.black, // Warna ikon dibuat hitam
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             obscurePassword = !obscurePassword;
//                           });
//                         },
//                       ),
//                       // -------------------------
//                       filled: true,
//                       fillColor: Colors.grey[50],
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                           width: 5.0,
//                         ),
//                       ),

//                       // --- DIUBAH MENJADI HITAM SEBELUM FOCUS ---
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors
//                               .black, // Warna border hitam sebelum di-klik
//                           width:
//                               3.0, // Sesuaikan ketebalan garis sesuai keinginan Anda
//                         ),
//                       ),

//                       // ------------------------------------------
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color:
//                               Colors.black, // Warna border saat di-klik (focus)
//                           width: 3,
//                         ),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.trim().isEmpty) {
//                         return 'Password shouldnt empty';
//                       }

//                       if (value.length < 8) {
//                         return 'Password min 8 characters';
//                       }

//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 20),

//                   TextFormField(
//                     controller: asalKotaC,
//                     decoration: InputDecoration(
//                       hintText: 'Asal Kota',
//                       prefixIcon: const Icon(Icons.email),
//                       filled: true,
//                       fillColor: Colors.grey[50],
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                           width: 5.0,
//                         ),
//                       ),
//                       // --- UBAH DI SINI (Sebelum focused / keadaan aktif biasa) ---
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors
//                               .black, // Mengubah warna border menjadi hitam
//                           width:
//                               3.0, // Atur ketebalan garis sesuai kebutuhan (misal: 1 atau 2)
//                         ),
//                       ),
//                       // -------------------------------------------------------------
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         borderSide: const BorderSide(
//                           color: Colors.black, // Garis saat diklik / fokus
//                           width: 3,
//                         ),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your Town';
//                       }
//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 20),

//                   ElevatedButton(
//                     onPressed: registerUser,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFFFB703),
//                       foregroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 176, // Padding samping kiri-kanan
//                         vertical: 28, // Padding atas-bawah
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(0),
//                         // --- TAMBAHKAN KODE BORDER DI SINI ---
//                         side: const BorderSide(
//                           color: Colors.black, // Warna garis border
//                           width: 3.0, // Ketebalan garis border
//                         ),
//                         // -------------------------------------
//                       ),
//                       elevation: 0,
//                     ),
//                     child: const Text(
//                       'Register',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   Divider(color: Colors.black),

//                   SizedBox(height: 20),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Already Have An Account ? ',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const LoginPageTugas12(), // ✅ Ditambahkan (context) =>
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Sign In',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   const SizedBox(height: 40),

//                   const Text(
//                     'Data Peserta',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   const SizedBox(height: 15),

//                   FutureBuilder<List<UserModelSQL>>(
//                     future: dbHelper.getUsers(),

//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return const Padding(
//                           padding: EdgeInsets.all(20),

//                           child: CircularProgressIndicator(color: Colors.white),
//                         );
//                       }

//                       if (snapshot.hasError) {
//                         return Text(
//                           'Error: ${snapshot.error}',
//                           style: const TextStyle(color: Colors.white),
//                         );
//                       }

//                       final users = snapshot.data ?? [];

//                       if (users.isEmpty) {
//                         return const Padding(
//                           padding: EdgeInsets.all(20),

//                           child: Text(
//                             'Belum ada data peserta',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         );
//                       }

//                       return ListView.builder(
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),

//                         itemCount: users.length,

//                         itemBuilder: (context, index) {
//                           final user = users[index];

//                           return Card(
//                             margin: const EdgeInsets.only(bottom: 12),

//                             color: Colors.white,

//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),

//                             child: Padding(
//                               padding: const EdgeInsets.all(16),

//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,

//                                 children: [
//                                   Text(
//                                     user.nama,
//                                     style: const TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),

//                                   const SizedBox(height: 8),

//                                   Text('Email: ${user.email}'),

//                                   Text('Nomor HP: ${user.nomorHp}'),

//                                   Text('Asal Kota: ${user.asalKota}'),

//                                   const SizedBox(height: 10),

//                                   // DELETE
//                                   Align(
//                                     alignment: Alignment.centerRight,

//                                     child: IconButton(
//                                       icon: const Icon(
//                                         Icons.delete_outline,
//                                         color: Colors.red,
//                                       ),

//                                       onPressed: () {
//                                         deleteUser(user.id!);
//                                       },
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),

//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String hintText,
//     required IconData icon,
//     required String? Function(String?) validator,
//     TextInputType keyboardType = TextInputType.text,
//   }) {
//     return TextFormField(
//       controller: controller,

//       keyboardType: keyboardType,

//       style: const TextStyle(color: Colors.black),

//       validator: validator,

//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: Colors.black),

//         hintText: hintText,

//         hintStyle: const TextStyle(color: Colors.black),

//         enabledBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),

//         focusedBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//       ),
//     );
//   }

//   Future<void> registerUser() async {
//     // VALIDATION
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }

//     // CREATE MODEL
//     final user = UserModelSQL(
//       nama: namaC.text.trim(),
//       email: emailC.text.trim(),
//       nomorHp: nomorHpC.text.trim(),
//       password: passwordC.text,
//       asalKota: asalKotaC.text.trim(),
//     );

//     // INSERT DATABASE
//     final success = await dbHelper.registerUser(user);

//     if (!mounted) return;

//     if (success) {
//       namaC.clear();
//       emailC.clear();
//       nomorHpC.clear();
//       passwordC.clear();
//       asalKotaC.clear;

//       setState(() {});

//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Data berhasil disimpan!')));
//     } else {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Email sudah terdaftar!')));
//     }
//   }

//   Future<void> deleteUser(int id) async {
//     await dbHelper.deleteUser(id);

//     if (!mounted) return;

//     setState(() {});

//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text('Data berhasil dihapus')));
//   }

//   @override
//   void dispose() {
//     namaC.dispose();
//     emailC.dispose();
//     nomorHpC.dispose();
//     passwordC.dispose();
//     asalKotaC.dispose();

//     super.dispose();
//   }
// }
