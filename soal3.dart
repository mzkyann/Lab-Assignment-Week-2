import 'dart:io';

class ATM {
  double _saldo;

  ATM(this._saldo);

  void setorUang(double jumlah) {
    if (jumlah >= 50000) { 
      _saldo += jumlah;
      stdout.write('Setoran: Rp$jumlah berhasil.\n');
    } else {
      stdout.write('Jumlah setoran harus minimal Rp50.000.\n');
    }
  }

  void tarikUang(double jumlah) {
    if (jumlah >= 50000 && jumlah <= _saldo) { 
      _saldo -= jumlah;
      stdout.write('Penarikan: Rp$jumlah berhasil.\n');
    } else {
      stdout.write('Penarikan gagal. Jumlah harus minimal Rp50.000 atau saldo tidak mencukupi.\n');
    }
  }

  void cekSaldo() {
    stdout.write('Saldo saat ini: Rp$_saldo\n');
  }
}
