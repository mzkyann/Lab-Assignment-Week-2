import 'dart:io';

class RekeningBank {
  double _saldo;

  RekeningBank(this._saldo);

  void deposit(double jumlah) {
    if (jumlah >= 50000) { 
      _saldo += jumlah;
      stdout.write('Deposit: Rp$jumlah berhasil.\n');
    } else {
      stdout.write('Jumlah deposit harus minimal Rp50.000.\n');
    }
  }

  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      stdout.write('Penarikan: Rp$jumlah berhasil.\n');
    } else {
      stdout.write('Penarikan gagal. Jumlah tidak valid atau saldo tidak mencukupi.\n');
    }
  }

  void cekSaldo() {
    stdout.write('Saldo saat ini: Rp$_saldo\n');
  }
}

class RekeningTabungan extends RekeningBank {
  RekeningTabungan(double saldo) : super(saldo);

  void terapkanBunga(double sukuBunga) {
    if (sukuBunga > 0) {
      double bunga = _saldo * sukuBunga / 100;
      deposit(bunga);
      stdout.write('Bunga sebesar ${sukuBunga}% telah diterapkan.\n');
    } else {
      stdout.write('Suku bunga harus positif.\n');
    }
  }
}
