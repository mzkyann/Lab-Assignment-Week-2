import 'dart:io';
import 'soal3.dart'; // Mengimpor kelas ATM dari soal3.dart

void main() {
  ATM atm = ATM(1000000.0);

  atm.cekSaldo();

  stdout.write('Masukkan jumlah setoran: ');
  double? jumlahSetor = double.tryParse(stdin.readLineSync()!); 

  if (jumlahSetor != null) {
    atm.setorUang(jumlahSetor);
  } else {
    stdout.write('Jumlah setoran tidak valid.\n');
  }

  atm.cekSaldo();

  stdout.write('Masukkan jumlah penarikan: ');
  double? jumlahTarik = double.tryParse(stdin.readLineSync()!); 

  if (jumlahTarik != null) {
    atm.tarikUang(jumlahTarik);
  } else {
    stdout.write('Jumlah penarikan tidak valid.\n');
  }

  atm.cekSaldo();
}
