import 'dart:io';
import 'soal2.dart'; 

void main() {
  RekeningTabungan rekening = RekeningTabungan(1000000.0);

  rekening.cekSaldo();

  stdout.write('Masukkan jumlah deposit: ');
  double? jumlahDeposit = double.tryParse(stdin.readLineSync()!); 

  if (jumlahDeposit != null) {
    rekening.deposit(jumlahDeposit); 
  } else {
    stdout.write('Jumlah deposit tidak valid.\n');
  }

  rekening.cekSaldo();

  stdout.write('Masukkan jumlah penarikan: ');
  double? jumlahPenarikan = double.tryParse(stdin.readLineSync()!); 

  if (jumlahPenarikan != null) {
    rekening.tarik(jumlahPenarikan); 
  } else {
    stdout.write('Jumlah penarikan tidak valid.\n');
  }

  rekening.cekSaldo();

  rekening.terapkanBunga(5.0);

  rekening.cekSaldo();
}
