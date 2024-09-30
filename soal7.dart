import 'dart:io';

class Kendaraan {
  String nama;
  double kecepatan;

  Kendaraan(this.nama, this.kecepatan);

  void bergerak() {
    stdout.write('Kendaraan ini bergerak.\n');
  }

  String deskripsiKecepatan() {
    if (kecepatan < 30) {
      return 'lambat';
    } else if (kecepatan < 60) {
      return 'normal';
    } else {
      return 'cepat';
    }
  }
}

class Mobil extends Kendaraan {
  Mobil(String nama, double kecepatan) : super(nama, kecepatan);

  @override
  void bergerak() {
    String kondisiKecepatan = deskripsiKecepatan();
    stdout.write('Mobil $nama bergerak $kondisiKecepatan di jalan dengan kecepatan $kecepatan km/jam.\n');
  }
}

class Motor extends Kendaraan {
  Motor(String nama, double kecepatan) : super(nama, kecepatan);

  @override
  void bergerak() {
    String kondisiKecepatan = deskripsiKecepatan();
    stdout.write('Motor $nama bergerak $kondisiKecepatan di jalan dengan kecepatan $kecepatan km/jam.\n');
  }
}
