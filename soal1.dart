import 'dart:io';

class Mahasiswa {
  String nama;
  String nim;
  double nilai;

  Mahasiswa(this.nama, this.nim, this.nilai);

  void tampilkanInfo() {
    stdout.write('Nama Mahasiswa: $nama\n');
    stdout.write('NIM: $nim\n');
    stdout.write('Nilai: $nilai\n');
  }

  bool apakahLulus() {
    return nilai >= 70;
  }
}
