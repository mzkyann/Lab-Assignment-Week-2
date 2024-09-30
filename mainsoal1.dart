import 'dart:io';
import 'soal1.dart'; 

void main() {
  stdout.write('Masukkan Nama Mahasiswa: ');
  String? nama = stdin.readLineSync(); 

  stdout.write('Masukkan NIM: ');
  String? nim = stdin.readLineSync(); 

  stdout.write('Masukkan Nilai: ');
  double? nilai = double.parse(stdin.readLineSync()!);

  Mahasiswa mahasiswa = Mahasiswa(nama!, nim!, nilai);

  stdout.write('\nInformasi Mahasiswa:\n');
  mahasiswa.tampilkanInfo();

  if (mahasiswa.apakahLulus()) {
    stdout.write('Selamat, Anda telah lulus!\n');
  } else {
    stdout.write('Maaf, Anda belum lulus. Coba belajar lebih giat lagi.\n');
  }
}
