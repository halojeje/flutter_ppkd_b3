import 'package:flutter/material.dart';

class TugasFlutter9s extends StatefulWidget {
  const TugasFlutter9s({super.key});

  @override
  State<TugasFlutter9s> createState() => _TugasFlutter9sState();
}

class _TugasFlutter9sState extends State<TugasFlutter9s> {
  int _selectedIndex = 0;

  void _changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Menutup drawer setelah memilih item
  }

  final List<String> _titles = [
    "Tugas 9 - Level 1",
    "Tugas 9 - Level 2",
    "Tugas 9 - Level 3",
  ];

  final List<Widget> _pages = [Level1List(), Level2List(), Level3List()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          _titles[_selectedIndex], // biar title ganti sesuai page
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Navigation Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.looks_one),
              title: Text("Level 1 (List<String>)"),
              selected: _selectedIndex == 0,
              onTap: () => _changePage(0),
            ),
            ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Level 2 (List<Map>)"),
              selected: _selectedIndex == 1,
              onTap: () => _changePage(1),
            ),
            ListTile(
              leading: Icon(Icons.looks_3),
              title: Text("Level 3 (Model Class)"),
              selected: _selectedIndex == 2,
              onTap: () => _changePage(2),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // BODY
    );
  }
} // <- _TugasFlutter9sState ditutup disini

//////////////////////
// LEVEL 1: List<String>
//////////////////////
class Level1List extends StatelessWidget {
  Level1List({super.key});

  final List<String> produkKesehatan = [
    // nama variabel huruf kecil
    'Vitamin',
    'Obat Tablet',
    'Obat Puyer',
    'Termometer',
    'Stetoskop',
    'Kasa Steril',
    'Hand Sanitizer',
    'Masker',
    'Jarum Suntik',
    'Obat Luka',
    'Dental Floss',
    'Antiseptik',
    'Sarung Tangan Latex',
    'Probiotik',
    'Microdrip set',
    'Tubing',
    'Injection Port',
    'Isotonik',
    'Cairan Saline',
    'Kasa',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: produkKesehatan.length,

      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(
      //       tileColor: index % 2 == 0 ? Colors.amberAccent : Colors.cyan,
      //       title: Text(dataProduk[index]["nama"]),
      //       subtitle: Text(produkKesehatan[index]["asal"]),
      //       trailing: Text(produkKesehatan[index]["harga"].toString()),
      //     );
      //   },
      itemBuilder: (context, index) {
        return ListTile(title: Text(produkKesehatan[index]));
      },
    );
  }
}

//////////////////////
// LEVEL 2: List<Map>
//////////////////////
class Level2List extends StatelessWidget {
  Level2List({super.key});

  final List<Map<String, dynamic>> produkKesehatan = [
    {'nama': 'Vitamin', 'icon': Icons.apple},
    {'nama': 'Obat Tablet', 'icon': Icons.medical_services},
    {'nama': 'Obat Puyer', 'icon': Icons.medication},
    {'nama': 'Termometer', 'icon': Icons.thermostat},
    {'nama': 'Stetoskop', 'icon': Icons.hearing},
    {'nama': 'Kasa Steri', 'icon': Icons.cleaning_services},
    {'nama': 'Hand Sanitizer', 'icon': Icons.soap},
    {'nama': 'Masker', 'icon': Icons.masks},
    {'nama': 'Jarum Suntik', 'icon': Icons.medication_liquid},
    {'nama': 'Obat Luka', 'icon': Icons.healing},
    {'nama': 'Dental Floss', 'icon': Icons.apple},
    {'nama': 'Antiseptik', 'icon': Icons.medical_services},
    {'nama': 'Sarung Tangan Latex', 'icon': Icons.medication},
    {'nama': 'Probiotik', 'icon': Icons.thermostat},
    {'nama': 'Microdrip set', 'icon': Icons.hearing},
    {'nama': 'Tubing', 'icon': Icons.cleaning_services},
    {'nama': 'Injection Port', 'icon': Icons.soap},
    {'nama': 'Isotonik', 'icon': Icons.masks},
    {'nama': 'Cairan Saline', 'icon': Icons.medication_liquid},
    {'nama': 'Kasa', 'icon': Icons.healing},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: produkKesehatan.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(produkKesehatan[index]['icon']),
          title: Text(produkKesehatan[index]['nama']),
        );
      },
    );
  }
} // <- gak ada koma disini

//////////////////////
// LEVEL 3: Model Class
//////////////////////
class ProdukKesehatan {
  final String nama;
  final String gambar;
  final String deskripsi;

  const ProdukKesehatan({
    // tambahin const
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });
}

final List<ProdukKesehatan> produkList = const [
  // tambahin const
  ProdukKesehatan(
    nama: "Vitamin",
    gambar: "assets/images/vitamin.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Obat Tablet",
    gambar: "assets/images/obat_tablet.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Obat Puyer",
    gambar: "assets/images/obat_puyer.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Termometer",
    gambar: "assets/images/termometer.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Stetoskop",
    gambar: "assets/images/stetoskop.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Kasa Steril",
    gambar: "assets/images/kasa_steril.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Hand Sanitizer",
    gambar: "assets/images/hand_sanitizer.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Masker",
    gambar: "assets/images/masker.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Jarum Suntik",
    gambar: "assets/images/jarum.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Obat Luka",
    gambar: "assets/images/obat_luka.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Dental Floss",
    gambar: "assets/images/dental.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Hand Sanitizer",
    gambar: "assets/images/hand_sanitizer.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Antiseptik",
    gambar: "assets/images/antiseptik2.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Sarung Tangan Latex",
    gambar: "assets/images/sarung.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Probiotik",
    gambar: "assets/images/probiotik.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Microdrip Set",
    gambar: "assets/images/microdrip.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Tubing",
    gambar: "assets/images/tubing.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Injection Port",
    gambar: "assets/images/injection.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Isotonik",
    gambar: "assets/images/isotonik.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Cairan Saline",
    gambar: "assets/images/saline.jpg",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
  ProdukKesehatan(
    nama: "Kasa",
    gambar: "assets/images/kasa.png",
    deskripsi: "Barang untuk kesehatan orang sakit.",
  ),
];

class Level3List extends StatelessWidget {
  const Level3List({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: produkList.length,
      itemBuilder: (context, index) {
        final produk = produkList[index];
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: Image.asset(
              produk.gambar,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(produk.nama),
            subtitle: Text(produk.deskripsi),
          ),
        );
      },
    );
  }
}
