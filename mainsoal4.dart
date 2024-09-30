import 'dart:io';
import 'soal4.dart'; 

void main() {
  Perpustakaan perpustakaan = Perpustakaan();

  stdout.write('Berapa banyak buku yang ingin Anda tambahkan? ');
  int jumlahBuku = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlahBuku; i++) {
    stdout.write('Masukkan judul buku ke-${i + 1}: ');
    String judul = stdin.readLineSync()!;

    stdout.write('Masukkan penulis buku ke-${i + 1}: ');
    String penulis = stdin.readLineSync()!;

    stdout.write('Masukkan tahun terbit buku ke-${i + 1}: ');
    int tahun = int.parse(stdin.readLineSync()!);

    perpustakaan.tambahBuku(Buku(judul, penulis, tahun));
  }

  perpustakaan.tampilkanSemuaBuku();

  while (true) {
    stdout.write('Masukkan nomor urut buku yang ingin dihapus (ketik "selesai" untuk keluar): ');
    String? inputHapus = stdin.readLineSync();

    if (inputHapus != null && inputHapus.toLowerCase() == 'selesai') {
      break;
    }

    int indeksHapus = int.parse(inputHapus!) - 1;
    perpustakaan.hapusBuku(indeksHapus);
    perpustakaan.tampilkanSemuaBuku();
  }

  print('Terima kasih telah menggunakan sistem perpustakaan.');
}
