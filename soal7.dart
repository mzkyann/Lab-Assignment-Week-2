import 'dart:io';

class Kendaraan {
  String nama;
  double kecepatan;

  Kendaraan(this.nama, this.kecepatan);

  void bergerak() {
    stdout.write('Kendaraan ini bergerak.\n');
  }
}

class Mobil extends Kendaraan {
  Mobil(String nama, double kecepatan) : super(nama, kecepatan);

  @override
  void bergerak() {
    stdout.write('Mobil $nama bergerak cepat di jalan dengan kecepatan $kecepatan km/jam.\n');
  }
}

class Motor extends Kendaraan {
  Motor(String nama, double kecepatan) : super(nama, kecepatan);

  @override
  void bergerak() {
    stdout.write('Motor $nama bergerak dengan kecepatan $kecepatan km/jam.\n');
  }
}
