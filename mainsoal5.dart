import 'dart:io';
import 'soal5.dart';

void main() {
  // Membuat objek Anjing dan Kucing
  Anjing anjing = Anjing();
  Kucing kucing = Kucing();

  stdout.write('Anjing:\n');
  anjing.suara(); 
  anjing.makan();  

  stdout.write('\n');

  stdout.write('Kucing:\n');
  kucing.suara(); 
  kucing.makan();
}
