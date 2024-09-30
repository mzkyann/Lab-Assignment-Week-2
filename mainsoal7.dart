import 'dart:io';
import 'soal7.dart';

void main() {
  stdout.write('Masukkan jenis kendaraan (Mobil/Motor): ');
  String? jenisKendaraan = stdin.readLineSync();

  stdout.write('Masukkan nama kendaraan: ');
  String? nama = stdin.readLineSync();

  stdout.write('Masukkan kecepatan kendaraan (km/jam): ');
  double? kecepatan = double.parse(stdin.readLineSync()!);

  Kendaraan kendaraan;

  if (jenisKendaraan!.toLowerCase() == 'mobil') {
    kendaraan = Mobil(nama!, kecepatan); 
  } else if (jenisKendaraan.toLowerCase() == 'motor') {
    kendaraan = Motor(nama!, kecepatan); 
  } else {
    stdout.write('Jenis kendaraan tidak valid.\n');
    return;
  }

  kendaraan.bergerak();
}
