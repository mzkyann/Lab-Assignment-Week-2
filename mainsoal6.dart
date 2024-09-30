import 'dart:io';
import 'soal6.dart'; 

void main() {
  stdout.write('Masukkan suhu dalam Celsius: ');
  double? celsius = double.parse(stdin.readLineSync()!);


  KonversiSuhu konversi = KonversiSuhu(celsius);

  stdout.write('Pilih jenis konversi:\n');
  stdout.write('1. Reaumur\n');
  stdout.write('2. Fahrenheit\n');
  stdout.write('3. Kelvin\n');
  stdout.write('Masukkan pilihan (1/2/3): ');
  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      double reaumur = konversi.toReaumur();
      stdout.write('Suhu dalam Reaumur: $reaumur\n');
      break;
    case 2:
      double fahrenheit = konversi.toFahrenheit();
      stdout.write('Suhu dalam Fahrenheit: $fahrenheit\n');
      break;
    case 3:
      double kelvin = konversi.toKelvin();
      stdout.write('Suhu dalam Kelvin: $kelvin\n');
      break;
    default:
      stdout.write('Pilihan tidak valid.\n');
      break;
  }
}
