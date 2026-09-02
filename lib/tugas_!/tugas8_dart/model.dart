class Produk {
  final int nama;
  final String gambar;
  final String deskripsi;

  const Produk({
    required this.nama, 
    required this.gambar, 
    required this.deskripsi,
    });
}

void Produk.dynamic Function({deskripsi, gambar, nama}) fromJson(Map<string, dynamic> json) => Produk(  nama = json['nama'], 
  gambar = gambar, 
  deskripsi = deskripsi)



{return Produk(nama: json['nama'], 
  gambar: json['gambar'], 
  deskripsi: json['deskripsi']
  );

  