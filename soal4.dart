import 'dart:io';

class Buku {
  String judul;
  String penulis;
  int tahun;

  Buku(this.judul, this.penulis, this.tahun);

  void tampilkanInfo() {
    stdout.write('Judul: $judul, Penulis: $penulis, Tahun: $tahun');
  }
}

class Perpustakaan {
  List<Buku> daftarBuku = [];

  void tambahBuku(Buku buku) {
    daftarBuku.add(buku);
    print('Buku "${buku.judul}" berhasil ditambahkan ke perpustakaan.');
  }

  void hapusBuku(int indeks) {
    if (indeks >= 0 && indeks < daftarBuku.length) {
      Buku bukuDihapus = daftarBuku.removeAt(indeks);
      print('Buku "${bukuDihapus.judul}" berhasil dihapus dari perpustakaan.');
    } else {
      print('Indeks tidak valid. Tidak ada buku yang dihapus.');
    }
  }

  void tampilkanSemuaBuku() {
    if (daftarBuku.isEmpty) {
      print('Tidak ada buku di perpustakaan.');
    } else {
      print('Daftar Buku di Perpustakaan:');
      for (int i = 0; i < daftarBuku.length; i++) {
        print('[${i + 1}] ${daftarBuku[i].judul}');
      }
    }
  }
}
